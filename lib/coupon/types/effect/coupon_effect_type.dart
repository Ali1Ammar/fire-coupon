import 'package:freezed_annotation/freezed_annotation.dart';

part "coupon_effect_type.freezed.dart";
part "coupon_effect_type.g.dart";

@Freezed(unionKey: "type")
class CouponEffectType with _$CouponEffectType {
  const CouponEffectType._();

  const factory CouponEffectType.removeAdsUntilDate(DateTime date) =
      CouponRemoveAdUntilDate;
  const factory CouponEffectType.removeAdsForDuration(Duration duration) =
      CouponRemoveAdForDuration;

  String toArabicString() {
    return map(
      removeAdsUntilDate: (data) =>
          "حذف الاعلانات حتى تاريخ ${data.date.toIso8601String()}",
      removeAdsForDuration: (data) =>
          "حذف الاعلانات لمدة ${data.duration.inDays} ايام",
    );
  }

  bool isExpired() {
    final now = DateTime.now();
    return map(
      removeAdsUntilDate: (data) => data.date.isBefore(now),
      removeAdsForDuration: (data) =>
          data.duration.inDays <= now.difference(now).inDays,
    );
  }

  factory CouponEffectType.fromJson(Map<String, dynamic> json) =>
      _$CouponEffectTypeFromJson(json);
}
enum CouponEffectTypeEnum {
  removeAdsUntilDate("Until Date"),
  removeAdsForDuration("For Duration");

  final String title;

  const CouponEffectTypeEnum(this.title);
}
