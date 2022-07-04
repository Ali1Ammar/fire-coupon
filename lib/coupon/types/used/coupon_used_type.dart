import 'package:freezed_annotation/freezed_annotation.dart';

part "coupon_used_type.freezed.dart";
part "coupon_used_type.g.dart";

@Freezed(unionKey: "type")
class CouponUsedType with _$CouponUsedType {
  const CouponUsedType._();

  const factory CouponUsedType.onTime(bool isUsed) = OnTimeCoupon;
  const factory CouponUsedType.untilExpire() = UntilExpireCoupon;
  const factory CouponUsedType.countTime(int count,List<String> ids) = CountTimeCoupon;

  factory CouponUsedType.fromJson(Map<String, dynamic> json) => _$CouponUsedTypeFromJson(json);
}