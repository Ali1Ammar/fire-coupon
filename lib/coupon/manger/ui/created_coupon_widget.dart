import 'package:coupon/coupon/manger/ui/coupon_listile.dart';
import 'package:coupon/coupon/types/coupon/coupon_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreatedCouponPage extends StatelessWidget {
  final List<CouponItem> items;
  const CreatedCouponPage({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            final builder = StringBuffer();
            for (var item in items) {
              builder.writeln(item.code);
            }
            Clipboard.setData(ClipboardData(text: builder.toString()));
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("copied"),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text("ok"))
                  ],
                ));
          }, icon: const Icon(Icons.copy_all) )
        ],
      ) ,
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            final item = items[i];
            return CouponListTile(item: item);
          }),
    );
  }
}
