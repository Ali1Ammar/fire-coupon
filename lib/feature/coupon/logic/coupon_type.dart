import 'package:freezed_annotation/freezed_annotation.dart';

part "coupon_type.freezed.dart";
part "coupon_type.g.dart";

@Freezed(unionKey: "type")
class CouponType with _$CouponType {
  const factory CouponType.removeAdsUntilDate(DateTime date) =
      CouponRemoveAdUntilDate;
  const factory CouponType.removeAdsForDuration(Duration duration) =
      CouponRemoveAdForDuration;


  factory CouponType.fromJson(Map<String, dynamic> json) => _$CouponTypeFromJson(json);
}

// enum CouponTypeEnum {
//   removeAdsUntilDate,
//   removeAdsForDuration,
// }

enum CouponTypeEnum {
  removeAdsUntilDate("حذف اعلانات لتاريخ"),
  removeAdsForDuration("حذف اعلانات لمده");
  
  final String arabicTitle;
  
  const CouponTypeEnum(this.arabicTitle);
}