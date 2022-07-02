import 'dart:io';

import 'package:coupon/coupon/manger/logic/coupon_item.dart';
import 'package:coupon/coupon/manger/logic/coupon_type.dart';
import 'package:coupon/coupon/manger/logic/generate_hashid.dart';
import 'package:coupon/shared/logic/firebase_db.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final couponServiceProvider = Provider((_) {
  if(Platform.isAndroid){
    return CouponService();
  } 
  return FakeCouponService();
});

class CouponService  with FirebaseDb  implements ICouponService{
  final _generator = GenetateHashId();

  @override
  Future<CouponItem> generateOne(
      CouponType type, DateTime expireAt, String name) async {
    final counterIndex = await _getCurrentCounterAndInc();
    final hashId = _generator.generateOne(counterIndex);
    final item = CouponItem(hashId, expireAt, false, type, name);
    await codeRef(hashId).set(item.toJson());
    return item;
  }

  @override
  Future<List<CouponItem>> generateMulti(
      CouponType type, DateTime expireAt, int count, String name) async {
    final counterIndex = await _getMultiCounterAndInc(count);
    final hashIds = _generator.generateFrom(counterIndex, count);
    final items = hashIds.map((e) => CouponItem(e, expireAt, false, type, name));
    final json = Map.fromEntries(
        items.map((e) => MapEntry(e.code,e.toJson() )));
    await itemsRef.update( json );
    return items.toList();
  }

  Future<int> _getCurrentCounterAndInc() async {
    final res = await counterRef.runTransaction((value) {
      if (value == null) {
        return Transaction.success(1);
      }
      final number = value as int;
      return Transaction.success(number + 1);
    });
    final number = (res.snapshot.value as int) - 1;
    return number;
  }

  //return starting index of coupon items
  Future<int> _getMultiCounterAndInc(int numberToGet) async {
    final res = await counterRef.runTransaction((value) {
      if (value == null) {
        return Transaction.success(numberToGet);
      }
      final number = value as int;
      return Transaction.success(number + numberToGet);
    },applyLocally: false);
    final number = (res.snapshot.value as int) - numberToGet;
    return number;
  }
}


abstract class ICouponService {

  Future<List<CouponItem>> generateMulti(CouponType type, DateTime expireAt, int count, String name);

  Future<CouponItem> generateOne(CouponType type, DateTime expireAt, String name);

}

class FakeCouponService implements ICouponService{
  @override
  Future<List<CouponItem>> generateMulti(CouponType type, DateTime expireAt, int count, String name) {
    // TODO: implement generateMulti
    throw UnimplementedError();
  }

  @override
  Future<CouponItem> generateOne(CouponType type, DateTime expireAt, String name) {
    // TODO: implement generateOne
    throw UnimplementedError();
  }
}