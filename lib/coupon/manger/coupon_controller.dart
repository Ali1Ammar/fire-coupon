import 'package:coupon/coupon/manger/coupon_page_state.dart';
import 'package:coupon/coupon/manger/logic/coupon_repo.dart';
import 'package:coupon/coupon/manger/logic/coupon_service.dart';
import 'package:coupon/coupon/manger/ui/created_coupon_widget.dart';
import 'package:coupon/coupon/types/effect/coupon_effect_type.dart';
import 'package:coupon/coupon/types/used/coupon_used_type.dart';
import 'package:coupon/main/material_app.dart';
import 'package:coupon/shared/widget/dialog.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final defualtInit = CouponPageState.init(
  name: "remove ads",
  countCoupon: 2,
  countUsed: 2,
  couponEffectType: CouponEffectTypeEnum.forDuration,
  couponUsedTypeEnum: CouponUsedTypeEnum.oneTime,
  day: 1,
  week: 1,
  expireCupon: DateTime.now().add(const Duration(days: 1)),
);

final couponControllerProvider =
    StateNotifierProvider<CouponController, CouponPageState>((_) =>
        CouponController(
            _.watch(couponServiceProvider), _.watch(couponRepoProvider), _));

class CouponController extends StateController<CouponPageState> {
  final ICouponService service;
  final CouponRepo repo;
  final Ref ref;

  CouponController(this.service, this.repo, this.ref) : super(defualtInit);

  void changeState(InitState newState) {
    state = newState;
  }

  pressClick() async {
    final oldInitState = state as InitState;
    state = const CouponPageState.loading();

    CouponUsedType usedType;
    switch (oldInitState.couponUsedTypeEnum) {
      case CouponUsedTypeEnum.oneTime:
        usedType = const CouponUsedType.oneTime();
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

    try {
      final res = await service.generateMulti(
          usedType,
          effectType,
          oldInitState.expireCupon,
          oldInitState.name,
          "remove-ad",
          oldInitState.countCoupon);
      state = defualtInit;
      ref.read(navigatorKeyProvider).currentState!.push(MaterialPageRoute(
          builder: (_) => CreatedCouponPage(
                items: res,
              )));
    } catch (e, s) {
      state = CouponPageState.error(e, s);
      showString(ref.read(navigatorKeyProvider).currentContext!, e.toString());

      rethrow;
    }
  }
}
