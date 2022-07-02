import 'package:coupon/coupon/manger/coupon_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MaterialAppWidget extends StatelessWidget {
  const MaterialAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ProviderScope(
      child: MaterialApp(
        home: const CouponPage(),
        // locale: const Locale("ar", "EF"),
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 243, 242, 245) 
        ) ,
        // builder: (_,child)=> Directionality(textDirection: TextDirection.rtl, child: child!) ,
      ),
    );
  }
}
