import 'package:coupon/coupon/manger/logic/coupon_repo.dart';
import 'package:coupon/coupon/manger/logic/coupon_service.dart';
import 'package:coupon/coupon/types/effect/coupon_effect_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final couponControllerProvider = Provider(
    (_) => CouponController(_.watch(couponServiceProvider), _.watch(couponRepoProvider)));

class CouponController  {
  final ICouponService service;
  final CouponRepo repo;
  CouponController(this.service, this.repo);

  generateRemoveAdsUntilDate(
    String name,
    int count,
    DateTime expireCouponDate,
  ) async {
    final res = await service.generateMulti(
        CouponEffectType.removeAdsUntilDate(expireCouponDate),
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
        CouponEffectType.removeAdsForDuration(Duration(days: day + (week * 7))),
        expireCouponDate,
        count,
        name);
    repo.addAll(res);
  }
}
