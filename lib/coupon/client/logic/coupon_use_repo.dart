import 'dart:async';
import 'dart:convert';

import 'package:coupon/coupon/types/coupon/coupon_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final couponUseRepoProvider = Provider((_) => CouponUseRepo());
final couponUseStateProvider =
    StateNotifierProvider<StateController<List<CouponItem>>, List<CouponItem>>(
        (ref) {
  final x = ref.watch(couponUseRepoProvider).state;
  return x;
});

class CouponUseRepo {
  List<CouponItem> _items = [];
  final state = StateController<List<CouponItem>>([]);

  CouponUseRepo() {
    init();
  }

  clear() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove("UsedCouponItems");
    _items.clear();
    _addToState();
  }

  bool has(String item)=> _items.any((d)=>d.code==item);
  init() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final res = sharedPreferences.getString("UsedCouponItems");

    if (res != null) {
      _items = (jsonDecode(res) as List)
          .map((e) => CouponItem.fromJson((e as Map).cast<String, dynamic>()))
          .toList();
    }

    int length = _items.length;
    _items.removeWhere((element) => element.effectType.isExpired());

    if (length != _items.length) {
      _reSave();
    } else {
      _addToState();
    }
  }

  add(CouponItem item) {
    _items = [item, ..._items];
    _reSave();
  }

  _addToState() {
    state.state = _items;
  }

  _reSave() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(
        "UsedCouponItems", jsonEncode(_items.map((e) => e.toJson()).toList()));
    _addToState();
  }
}
