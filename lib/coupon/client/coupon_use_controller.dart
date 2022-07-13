import 'package:coupon/coupon/client/logic/coupon_use_repo.dart';
import 'package:coupon/coupon/client/logic/coupon_use_service.dart';
import 'package:coupon/coupon/client/logic/exception.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final couponUseControllerProvider = Provider((_) => CouponUseController(
    _.watch(couponUseRepoProvider), _.watch(couponUseServiceProvider)));

class CouponUseController {
  final CouponUseRepo repo;
  final ICouponUseService service;
  final Set _alreadyTryed = {};
  CouponUseController(this.repo, this.service);

  Future<void> use(String code) async 
  {
    if(code.length<5 || code.contains(RegExp("[^A-Z0-9]"))){
      throw InvalidClientCouponException();
    } 
    if (_alreadyTryed.contains(code)) {
      throw TryAgainCouponException();
    }
    _alreadyTryed.add(code);
    if (repo.has(code)) {
      throw UsedCouponException();
    }
    final value = await service.use(code);
    await repo.add(value);
  }
}
