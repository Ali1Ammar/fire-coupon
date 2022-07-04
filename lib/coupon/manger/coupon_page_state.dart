import 'package:coupon/coupon/types/effect/coupon_effect_type.dart';
import 'package:coupon/coupon/types/used/coupon_used_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "coupon_page_state.freezed.dart";

@freezed
class CouponPageState with _$CouponPageState {
  const factory CouponPageState.init({
    required String name,
    required int countCoupon,
    required int countUsed,
    required int day,
    required int week,
    required DateTime expireCupon,
    required CouponEffectTypeEnum couponEffectType,
    required CouponUsedTypeEnum couponUsedTypeEnum,
    
  }) = InitState;
  const factory CouponPageState.error() = ErrorState;
  const factory CouponPageState.loading() = LoadingState;
    const factory CouponPageState.created() = CreatedState;
}
