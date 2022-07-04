import 'package:freezed_annotation/freezed_annotation.dart';

part "coupon_effect_type.freezed.dart";
part "coupon_effect_type.g.dart";

@Freezed(unionKey: "type")
class CouponEffectType with _$CouponEffectType {
  const CouponEffectType._();

  const factory CouponEffectType.untilDate(DateTime date) =
      UntilDate;
  const factory CouponEffectType.forDuration(Duration duration) =
      ForDuration;

  String toArabicString() {
    return map(
      untilDate: (data) =>
          "حتى تاريخ ${data.date.toIso8601String()}",
      forDuration: (data) =>
          "لمدة ${data.duration.inDays} ايام",
    );
  }

  bool isExpired() {
    final now = DateTime.now();
    return map(
      untilDate: (data) => data.date.isBefore(now),
      forDuration: (data) =>
          data.duration.inDays <= now.difference(now).inDays,
    );
  }

  factory CouponEffectType.fromJson(Map<String, dynamic> json) =>
      _$CouponEffectTypeFromJson(json);
}
enum CouponEffectTypeEnum {
  untilDate("Until Date"),
  forDuration("For Duration");

  final String title;

  const CouponEffectTypeEnum(this.title);
}
