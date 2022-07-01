import 'package:coupon/feature/coupon/logic/counter_item.dart';
import 'package:coupon/feature/coupon/logic/coupon_type.dart';
import 'package:coupon/feature/coupon/logic/generate_hashid.dart';
import 'package:firebase_database/firebase_database.dart';

class CouponService {
  final generator = GenetateHashId();
  final db = FirebaseDatabase.instance.ref("Coupon");

  Future<CouponItem> generateOne(
      CouponType type, DateTime expireAt, String name) async {
    final counterIndex = await _getCurrentCounterAndInc();
    final hashId = generator.generateOne(counterIndex);
    final item = CouponItem(hashId, expireAt, false, type, name);
    await db.child('items').child(hashId).set(item.toJson());
    return item;
  }

  Future<List<CouponItem>> generateMulti(
      CouponType type, DateTime expireAt, int count, String name) async {
    final counterIndex = await _getMultiCounterAndInc(count);
    final hashIds = generator.generateFrom(counterIndex, count);
    final items = hashIds.map((e) => CouponItem(e, expireAt, false, type, name));
    final json = Map.fromEntries(
        items.map((e) => MapEntry(e.code,e.toJson() )));
    await db.child('items').set( json );
    return items.toList();
  }

  Future<int> _getCurrentCounterAndInc() async {
    final res = await db.child('counter').runTransaction((value) {
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
    final res = await db.child('counter').runTransaction((value) {
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
