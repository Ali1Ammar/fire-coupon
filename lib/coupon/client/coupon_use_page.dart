import 'package:coupon/coupon/client/coupon_use_controller.dart';
import 'package:coupon/coupon/client/logic/coupon_use_repo.dart';
import 'package:coupon/coupon/client/logic/ui_feature_apapter.dart';
import 'package:coupon/shared/helper/utlis.dart';
import 'package:coupon/shared/widget/dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CouponUsePage extends HookConsumerWidget {
  const CouponUsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codeController = useTextEditingController();
    final state = useState(const AsyncSnapshot.nothing());
    final couponUseController = ref.read(couponUseControllerProvider);
    final usedCoupon = ref.watch(couponUseStateProvider);
    final enableUI = ref.watch(uiFeatureApapterProvider);
    // ref.watch(uiFeatureApapterStreamProvider).
    return Scaffold(
        appBar: AppBar(
          title: const Text('Coupon Use'),
        ),
        body: ListView(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Coupon Code',
              ),
              controller: codeController,
            ),
            if(enableUI.isAdEnable) const Card(child: Text("This is a fake ads")),
            ElevatedButton(
                onPressed: () async {
                  try {
                    await couponUseController.use(codeController.text);

                    state.value = const AsyncSnapshot.withData(
                        ConnectionState.done, null);
                  } catch (e, s) {
                    showString(context, e.toString());
                    state.value =
                        AsyncSnapshot.withError(ConnectionState.done, e, s);
                    // rethrow;
                  }
                },
                child: const Text('Use Coupon')),
              ...usedCoupon.map((item) => ListTile(
                    title: Text("${item.code} | ${item.name}"),
                    subtitle: Text(
                        "${item.effectType.toArabicString()} | ${formatter.format(item.expire)}"),
                  )),
          ],
        ));
  }
}
