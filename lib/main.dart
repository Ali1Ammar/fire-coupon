import 'dart:io';

import 'package:coupon/firebase_options.dart';
import 'package:coupon/main/material_app.dart';
import 'package:coupon/shared/logic/firebase_db.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  if( Platform.isAndroid ) {
    await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
CouponFirebaseDb.mainRef = FirebaseDatabase.instance.ref("Coupon");
FirebaseDatabase.instance.setPersistenceEnabled(false);
  }
  runApp( const MaterialAppWidget()
);
}
