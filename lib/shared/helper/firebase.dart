import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


Future<FirebaseApp> firebaseInit() async {
  return Firebase.initializeApp(
  );
}



DatabaseReference get rootRef => firebaseDatabase.ref();
FirebaseAuth get auth => FirebaseAuth.instance;

FirebaseDatabase get firebaseDatabase {
  if (kDebugMode)
    return FirebaseDatabase.instanceFor(
        app: Firebase.app(), databaseURL: "https://sjaj-debug.firebaseio.com/");
  return FirebaseDatabase.instance;
}
