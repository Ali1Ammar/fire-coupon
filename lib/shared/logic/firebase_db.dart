import 'package:firebase_database/firebase_database.dart';

abstract class CouponFirebaseDb {
  static late DatabaseReference mainRef ;
  late final counterRef = mainRef.child('counter');
  late final itemsRef = mainRef.child("items");
  DatabaseReference codeRef(String c) => itemsRef.child(c);
}

