import 'dart:io';

import 'package:coupon/coupon/client/logic/exception.dart';
import 'package:coupon/coupon/types/coupon/coupon_item.dart';
import 'package:coupon/shared/logic/firebase_db.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final couponUseServiceProvider = Provider(
    (_) => Platform.isAndroid ? CouponUseService() : FakeCouponUseService());

class CouponUseService with FirebaseDb implements ICouponUseService {
  @override
  Future<CouponItem> use(String code) async {
    Exception? exception;
    final res = await itemsRef.child(code).runTransaction((value) {
      exception = null;
      if (value == null) {
        exception = UnExistCouponException();
        return Transaction.abort();
      }
      try {
        final map = (value as Map).cast<String, dynamic>();
        map["effectType"] = (map["effectType"] as Map).cast<String, dynamic>();
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
    final data = (res.snapshot.value! as Map).cast<String, dynamic>();

    return CouponItem.fromJson(data);
  }
}

abstract class ICouponUseService {
  Future<CouponItem> use(String code);
}

class FakeCouponUseService implements ICouponUseService {
  @override
  Future<CouponItem> use(String code) {
    // TODO: implement use
    throw UnimplementedError();
  }
}
