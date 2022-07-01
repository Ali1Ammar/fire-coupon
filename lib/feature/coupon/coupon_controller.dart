
import 'package:coupon/feature/coupon/logic/coupon_service.dart';
import 'package:coupon/feature/coupon/logic/coupon_type.dart';

class CouponController   {
  final CouponService service;
  CouponController(this.service);

  generateRemoveAdsUntilDate(
    String name,
    int count,
    DateTime expireCouponDate,
  ) async {
    await service.generateMulti(CouponType.removeAdsUntilDate(expireCouponDate),
        expireCouponDate, count, name);
  }

  generateRemoveAdsForDuration(
    String name,
    int count,
    DateTime expireCouponDate,
    int day,
    int week,
  ) async {
    await service.generateMulti(
        CouponType.removeAdsForDuration(Duration(days: day + (week * 7))),
        expireCouponDate,
        count,
        name);
  }
}
