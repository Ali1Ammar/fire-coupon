import 'package:coupon/coupon/manger/coupon_page_state.dart';
import 'package:coupon/coupon/manger/logic/coupon_repo.dart';
import 'package:coupon/coupon/manger/logic/coupon_service.dart';
import 'package:coupon/coupon/types/effect/coupon_effect_type.dart';
import 'package:coupon/coupon/types/used/coupon_used_type.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final couponControllerProvider =
    StateNotifierProvider<CouponController, CouponPageState>((_) =>
        CouponController(
            _.watch(couponServiceProvider), _.watch(couponRepoProvider)));

class CouponController extends StateController<CouponPageState> {
  final ICouponService service;
  final CouponRepo repo;
  CouponController(this.service, this.repo)
      : super(CouponPageState.init(
          name: "remove ads",
          countCoupon: 2,
          countUsed: 2,
          couponEffectType: CouponEffectTypeEnum.forDuration,
          couponUsedTypeEnum: CouponUsedTypeEnum.oneTime,
          day: 1,
          week: 1,
          expireCupon: DateTime.now().add(const Duration(days: 1)),
        ));

  void changeState(InitState newState) {
    state = newState;
  }

  pressClick() async {
    final Future future;
    final oldInitState = state as InitState;
    state = const CouponPageState.loading();

    CouponUsedType usedType;
    switch (oldInitState.couponUsedTypeEnum) {
      case CouponUsedTypeEnum.oneTime:
        usedType = const CouponUsedType.oneTime(false);
        break;
      case CouponUsedTypeEnum.untilExpire:
        usedType = const CouponUsedType.untilExpire();
        break;
      case CouponUsedTypeEnum.countTime:
        usedType = CouponUsedType.countTime(oldInitState.countUsed, []);
        break;
    }
    CouponEffectType effectType;
    switch (oldInitState.couponEffectType) {
      case CouponEffectTypeEnum.untilDate:
        effectType = CouponEffectType.untilDate(oldInitState.expireCupon);
        break;
      case CouponEffectTypeEnum.forDuration:
        effectType = CouponEffectType.forDuration(
            Duration(days: oldInitState.day + (oldInitState.week * 7)));
        break;
    }

    future = service.generateMulti(usedType, effectType,
        oldInitState.expireCupon, oldInitState.name, "remove-ad"  , oldInitState.countCoupon);

    try {
      await future;
      state = const CouponPageState.created();
    } catch (e) {
      state = const CouponPageState.error();
      rethrow;
    }
  }
}
