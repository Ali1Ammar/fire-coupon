import 'dart:async';
import 'dart:convert';

import 'package:coupon/coupon/manger/logic/coupon_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final couponUseRepoProvider = Provider((_) => CouponUseRepo());
final couponUseStreamProvider =
    StreamProvider((ref) => ref.watch(couponUseRepoProvider).listen());

class CouponUseRepo {
  List<CouponItem> _items = [];
  final StreamController<List<CouponItem>> _streamController =
      StreamController();
  CouponUseRepo() {
    init();
  }

  init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final res = sharedPreferences.getString("UsedCouponItems");

    if (res != null) {
      _items =
          (jsonDecode(res) as List).map((e) => CouponItem.fromJson(e)).toList();
    }

    int length = _items.length;
    _items.removeWhere((element) => element.extra.isExpired());

    if (length != _items.length) {
      _reSave();
    }

    _streamController.add(_items);
  }

  add(CouponItem item) {
    _items.add(item);
    _reSave();
  }

  Stream<List<CouponItem>> listen() {
    return _streamController.stream;
  }

  _reSave() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(
        "UsedCouponItems", jsonEncode(_items.map((e) => e.toJson()).toList()));
    _streamController.add(_items);
  }
}
