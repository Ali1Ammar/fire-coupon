import 'package:coupon/coupon/types/effect/coupon_effect_type.dart';
import 'package:coupon/coupon/types/used/coupon_used_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "coupon_item.g.dart";
part "coupon_item.freezed.dart";

@freezed
class CouponItem with _$CouponItem {
  const factory CouponItem(
      {required String name,
      required String code,
      required DateTime expire,
      required CouponUsedType usedType,
      required CouponEffectType effectType}) = _CouponItem;

  factory CouponItem.fromJson(Map<String, dynamic> json) => _$CouponItemFromJson(json);
}
