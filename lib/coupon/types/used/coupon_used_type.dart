import 'package:freezed_annotation/freezed_annotation.dart';

part "coupon_used_type.freezed.dart";
part "coupon_used_type.g.dart";

@Freezed(unionKey: "type")
class CouponUsedType with _$CouponUsedType {
  const CouponUsedType._();

  const factory CouponUsedType.oneTime() = OneTimeCoupon;
  const factory CouponUsedType.untilExpire() = UntilExpireCoupon;
  const factory CouponUsedType.countTime(int count,List<String> ids) = CountTimeCoupon;

  factory CouponUsedType.fromJson(Map<String, dynamic> json) => _$CouponUsedTypeFromJson(json);

   CouponUsedType afterUsed()=>
    map(
      oneTime: (v) => v,
      untilExpire: (v) => v,
      countTime: (v) => v.copyWith(ids: v.ids..add("")),//TODO add real id
    );
}


enum CouponUsedTypeEnum {
  oneTime("One Time"),
  untilExpire("Until Expire"),
  countTime("Count Time");

  final String title;

  const CouponUsedTypeEnum(this.title);
}