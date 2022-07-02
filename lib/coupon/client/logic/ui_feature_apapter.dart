import 'package:coupon/coupon/client/logic/coupon_use_repo.dart';
import 'package:coupon/coupon/manger/logic/coupon_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final uiFeatureApapterStreamProvider = StreamProvider((ref) => ref.watch(couponUseStreamProvider.stream).map((event) => UiFeatureApapter(event)) );

class UiFeatureApapter {
  UiFeatureApapter(List<CouponItem> items) {
    //implement a code to convert List<CouponItem> to a easy to use bool or other value that could be acces from the ui easily
    // below is more complex example
    // for (var element in items) {
    //   element.extra.map(removeAdsUntilDate: (d) {
    //     isAdEnable = false;
    //   }, removeAdsForDuration: (d) {
    //     isAdEnable = false;
    //   } , openSecretLevel:(d){
    //     isSecretLevelEnable = true;
      
    //   } );
    // }
    if (items.isNotEmpty) isAdEnable = false;
  }

  bool isAdEnable = true;
}
