import 'package:coupon/coupon/types/effect/coupon_effect_type.dart';
import 'package:coupon/coupon/types/used/coupon_used_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "coupon_item.g.dart";
part "coupon_item.freezed.dart";

@freezed
class CouponItem with _$CouponItem {
  const CouponItem._();

  const factory CouponItem(
      {required String name,
      required String code,
      required DateTime expire,
      required CouponUsedType usedType,
      required bool isDone,
      required CouponEffectType effectType,
      required String extra}) = _CouponItem;

  factory CouponItem.fromJson(Map<String, dynamic> json) =>
      _$CouponItemFromJson(json);

  CouponItem afterUsed() {
    final afterUsedUsedType = usedType.afterUsed();
    return copyWith(
        usedType: afterUsedUsedType, isDone: _calcIsDone(afterUsedUsedType));
  }

  bool _calcIsDone(CouponUsedType used) {
    return used.map(
      oneTime: (v) => true,
      untilExpire: (v) => expire.isAfter(DateTime.now()),
      countTime: (v) => v.count < v.ids.length,
    );
  }
}
