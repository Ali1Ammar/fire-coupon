import 'dart:io';

import 'package:coupon/feature/coupon/client/logic/exception.dart';
import 'package:coupon/feature/coupon/logic/coupon_item.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final couponUseServiceProvider = Provider(
    (_) => Platform.isAndroid ? CouponUseService() : FakeCouponUseService());

class CouponUseService {
  final db = FirebaseDatabase.instance.ref("Coupon");

  Future<CouponItem> use(String code) async {
    Exception? exception;
    final res = await db.child("items").child(code).runTransaction((value) {
      exception = null;
      if (value == null) {
        exception = UnExistCouponException();
        return Transaction.abort();
      }
      try {
        final map = value as Map;
        // map["extra"] = ( map["extra"]  as Map).cast<String,dynamic>() ;
        final item = CouponItem.fromJson(map);

        if (item.isUsed) {
          exception = UsedCouponException();
          return Transaction.abort();
        }

        if (item.expire.isBefore(DateTime.now())) {
          exception = ExpiredCouponException();
          return Transaction.abort();
        }

        map["isUsed"] = true;
        return Transaction.success(map);
      } catch (e) {
        exception = InvalidCouponException();
        return Transaction.abort();
      }
    });
    if (exception != null) {
      throw exception!;
    }
    final data = res.snapshot.value;
    final map = (data! as Map).cast<String, dynamic>();

    return CouponItem.fromJson(map);
  }
}

class FakeCouponUseService implements CouponUseService {
  @override
  // TODO: implement db
  DatabaseReference get db => throw UnimplementedError();

  @override
  Future<CouponItem> use(String code) {
    // TODO: implement use
    throw UnimplementedError();
  }
}
