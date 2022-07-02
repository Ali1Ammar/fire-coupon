// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTLWLmc5hjbkLXieiXzN2YnvPGAbj_A8s',
    appId: '1:730482361475:android:f5e209312201d92b3c07b6',
    messagingSenderId: '730482361475',
    projectId: 'coupon-test-18a',
    databaseURL: 'https://coupon-test-18a-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'coupon-test-18a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBmsYyJAa4lApvTIkHmmvPs_OCI75ZOuT8',
    appId: '1:730482361475:ios:f8ec142b52b6e3553c07b6',
    messagingSenderId: '730482361475',
    projectId: 'coupon-test-18a',
    databaseURL: 'https://coupon-test-18a-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'coupon-test-18a.appspot.com',
    iosClientId: '730482361475-45f9a4ncs3oug3dav85f8nrrjbrbje4k.apps.googleusercontent.com',
    iosBundleId: 'com.example.coupon',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBmsYyJAa4lApvTIkHmmvPs_OCI75ZOuT8',
    appId: '1:730482361475:ios:f8ec142b52b6e3553c07b6',
    messagingSenderId: '730482361475',
    projectId: 'coupon-test-18a',
    databaseURL: 'https://coupon-test-18a-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'coupon-test-18a.appspot.com',
    iosClientId: '730482361475-45f9a4ncs3oug3dav85f8nrrjbrbje4k.apps.googleusercontent.com',
    iosBundleId: 'com.example.coupon',
  );
}