import 'package:firebase_database/firebase_database.dart';

abstract class FirebaseDb {
  late final _db = FirebaseDatabase.instance.ref("Coupon");
  late final counterRef = _db.child('counter');
  late final itemsRef = _db.child("items");
  DatabaseReference codeRef(String c) => itemsRef.child(c);
}
