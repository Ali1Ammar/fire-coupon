import 'package:freezed_annotation/freezed_annotation.dart';

part "coupon_type.freezed.dart";
part "coupon_type.g.dart";

@Freezed(unionKey: "type")
class CouponType with _$CouponType {
  const CouponType._();

  const factory CouponType.removeAdsUntilDate(DateTime date) =
      CouponRemoveAdUntilDate;
  const factory CouponType.removeAdsForDuration(Duration duration) =
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

  factory CouponType.fromJson(Map<String, dynamic> json) =>
      _$CouponTypeFromJson(json);
}

// enum CouponTypeEnum {
//   removeAdsUntilDate,
//   removeAdsForDuration,
// }

enum CouponTypeEnum {
  removeAdsUntilDate("Until Date"),
  removeAdsForDuration("For Duration");

  final String title;

  const CouponTypeEnum(this.title);
}
