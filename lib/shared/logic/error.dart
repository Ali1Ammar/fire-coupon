

import 'package:firebase_auth/firebase_auth.dart';

class UnAuthCouponException implements Exception {
  UnAuthCouponException();
  @override
  String toString()=>"you can not do this action, please login first";
}


  bool isPermissionError(err) =>
    err is FirebaseException &&
    err.plugin == "firebase_database" &&
    err.message!.contains("permission");