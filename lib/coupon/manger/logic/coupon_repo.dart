import 'dart:async';
import 'dart:convert';

import 'package:coupon/coupon/types/coupon/coupon_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final couponRepoProvider = Provider((_) => CouponRepo());
final couponStreamProvider =
    StreamProvider((ref) => ref.watch(couponRepoProvider).listen());

class CouponRepo {
  List<CouponItem> _items = [];
  final StreamController<List<CouponItem>> _streamController =
      StreamController();
  CouponRepo() {
    init();
  }

  init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final res = sharedPreferences.getString("CouponItems");
    if (res != null){
      _items =
          (jsonDecode(res) as List).map((e) => CouponItem.fromJson(e)).toList();
    }

    _streamController.add(_items);
  }

  add(CouponItem item) {
    _items.add(item);
    _reSave();
  }

  addAll(List<CouponItem> items) {
    _items.addAll(items);
    _reSave();
  }

  remove(CouponItem item) {
    _items.remove(item);

    _reSave();
  }

  Stream<List<CouponItem>> listen() {
    return _streamController.stream;
  }

  _reSave() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(
        "CouponItems", jsonEncode(_items.map((e) => e.toJson()).toList()));
    _streamController.add(_items);
  }
}
