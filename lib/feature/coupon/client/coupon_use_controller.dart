import 'package:coupon/feature/coupon/client/logic/coupon_use_repo.dart';
import 'package:coupon/feature/coupon/client/logic/coupon_use_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final couponUseControllerProvider = Provider((_) => CouponUseController(_.watch(couponUseRepoProvider) , _.watch(couponUseServiceProvider))  );

class CouponUseController {
  final CouponUseRepo repo;
  final CouponUseService service;
  CouponUseController(this.repo, this.service);

  Future<void> use(String code) async {
    final value = await service.use(code);
    await repo.add(value);
  }
}