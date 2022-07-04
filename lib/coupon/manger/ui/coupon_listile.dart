import 'package:coupon/coupon/manger/logic/coupon_repo.dart';
import 'package:coupon/coupon/types/coupon/coupon_item.dart';
import 'package:coupon/shared/helper/utlis.dart';
import 'package:coupon/shared/widget/dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CouponListTile extends StatelessWidget {
  const CouponListTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  final CouponItem item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("${item.code} | ${item.name}"),
      subtitle: Text(
          "${item.effectType.toArabicString()} | ${formatter.format(item.expire)}"),
      trailing: IconButton(
          onPressed: () {
            ProviderScope.containerOf(context)
                .read(couponRepoProvider)
                .remove(item);
          },
          icon: const Icon(Icons.delete)),
      onLongPress: () {
        Clipboard.setData(ClipboardData(text: item.code));
        showSnackBar(context, "تم النسخ");
      },
    );
  }
}
