import 'package:coupon/feature/coupon/logic/coupon_repo.dart';
import 'package:coupon/feature/coupon/logic/coupon_service.dart';
import 'package:coupon/feature/coupon/logic/coupon_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final couponControllerProvider = Provider(
    (_) => CouponController(CouponService(), _.watch(couponRepoProvider)));

class CouponController {
  final CouponService service;
  final CouponRepo repo;
  CouponController(this.service, this.repo);

  generateRemoveAdsUntilDate(
    String name,
    int count,
    DateTime expireCouponDate,
  ) async {
    final res = await service.generateMulti(
        CouponType.removeAdsUntilDate(expireCouponDate),
        expireCouponDate,
        count,
        name);
    repo.addAll(res);
  }

  generateRemoveAdsForDuration(
    String name,
    int count,
    DateTime expireCouponDate,
    int day,
    int week,
  ) async {
    final res = await service.generateMulti(
        CouponType.removeAdsForDuration(Duration(days: day + (week * 7))),
        expireCouponDate,
        count,
        name);
    repo.addAll(res);
  }
}
