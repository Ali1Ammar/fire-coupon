import 'package:coupon/coupon/manger/logic/coupon_repo.dart';
import 'package:coupon/coupon/manger/ui/coupon_listile.dart';
import 'package:coupon/coupon/types/coupon/coupon_item.dart';
import 'package:coupon/shared/helper/utlis.dart';
import 'package:coupon/shared/widget/dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CouponListPage extends HookConsumerWidget {
  const CouponListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(couponStreamProvider);

    return Scaffold(
      appBar: AppBar(),
      body: items.map<Widget>(
        data: ((datas) => ListView.builder(
            itemCount: datas.value.length,
            itemBuilder: (context, i) {
              final item = datas.value[i];
              return CouponListTile(item: item);
            })),
        error: ((error) => Text(error.toString())),
        loading: ((loading) => const CircularProgressIndicator()),
      ),
    );
  }
}
