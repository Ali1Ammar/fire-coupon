import 'dart:io';

import 'package:coupon/coupon/client/logic/exception.dart';
import 'package:coupon/coupon/types/coupon/coupon_item.dart';
import 'package:coupon/shared/helper/map_json.dart';
import 'package:coupon/shared/logic/firebase_db.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final couponUseServiceProvider = Provider(
    (_) => Platform.isAndroid ? CouponUseService() : FakeCouponUseService());

class CouponUseService with FirebaseDb implements ICouponUseService {
  @override
  Future<CouponItem> use(String code) async {
    Exception? exception;
    final res = await codeRef(code).runTransaction((value) {
      exception = null;
      if (value == null) {
        exception = UnExistCouponException();
        return Transaction.abort();
      }
      try {
        final map = toMapJson(value as Map) ;
        final item = CouponItem.fromJson(map);

        if (!item.couldBeUsed()) {
          exception = UsedCouponException();
          return Transaction.abort();
        }

        if (item.expire.isBefore(DateTime.now())) {
          exception = ExpiredCouponException();
          return Transaction.abort();
        }

        final afterUse = item.copyWith(usedType: item.usedType.afterUsed() ) ;
        return Transaction.success(afterUse.toJson());
      } catch (e, s) {
        if (kDebugMode) {
          print(e);
          print(s);
        }
        exception = InvalidCouponException();
        return Transaction.abort();
      }
    }, applyLocally: false);
    if (exception != null) {
      throw exception!;
    }
    final data = toMapJson(res.snapshot.value! as Map);

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
