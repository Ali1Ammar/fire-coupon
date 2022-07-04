import 'package:coupon/coupon/client/coupon_use_page.dart';
import 'package:coupon/coupon/manger/coupon_controller.dart';
import 'package:coupon/coupon/manger/coupon_list_page.dart';
import 'package:coupon/coupon/manger/ui/create_coupon_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CouponPage extends HookConsumerWidget {
  const CouponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final couponController = ref.watch(couponControllerProvider.notifier);
    final state = ref.watch(couponControllerProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text("genrate coupon"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => const CouponListPage()));
                },
                icon: const Icon(Icons.list)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const CouponUsePage()));
                },
                icon: const Icon(Icons.play_arrow))
          ],
        ),
        body: state.map(
            loading: (_) => const Center(child: CircularProgressIndicator()),
            error: (e) => Text(e.toString()),
            init: (data) {
              return CreateCouponWidget(
                  couponController: couponController, data: data);
            }));
  }
}
