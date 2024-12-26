// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAPL3VtELxEtbmVDS59rwo1dL7W4L0z9T4',
    appId: '1:938553968662:web:bd59e90eef9d774a918d37',
    messagingSenderId: '938553968662',
    projectId: 'stayscape-resort-booking-app',
    authDomain: 'stayscape-resort-booking-app.firebaseapp.com',
    storageBucket: 'stayscape-resort-booking-app.firebasestorage.app',
    measurementId: 'G-YJ38KB2X8G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBbmWmvmvPmrN1sf8kvLTcgJIn6sSNnDEM',
    appId: '1:938553968662:android:7eacd4d7aa04f0ee918d37',
    messagingSenderId: '938553968662',
    projectId: 'stayscape-resort-booking-app',
    storageBucket: 'stayscape-resort-booking-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAH2TUP14-aIdY1pRWSaSn5fS2n5pum0so',
    appId: '1:938553968662:ios:81648c0bdc93958c918d37',
    messagingSenderId: '938553968662',
    projectId: 'stayscape-resort-booking-app',
    storageBucket: 'stayscape-resort-booking-app.firebasestorage.app',
    androidClientId: '938553968662-bq7fulk7i68cf9o2b8i8dll6ot5oajhi.apps.googleusercontent.com',
    iosClientId: '938553968662-s8lc67in8kodl8snrh3j61t39vgsd92s.apps.googleusercontent.com',
    iosBundleId: 'com.example.adminResortBookingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAH2TUP14-aIdY1pRWSaSn5fS2n5pum0so',
    appId: '1:938553968662:ios:81648c0bdc93958c918d37',
    messagingSenderId: '938553968662',
    projectId: 'stayscape-resort-booking-app',
    storageBucket: 'stayscape-resort-booking-app.firebasestorage.app',
    androidClientId: '938553968662-bq7fulk7i68cf9o2b8i8dll6ot5oajhi.apps.googleusercontent.com',
    iosClientId: '938553968662-s8lc67in8kodl8snrh3j61t39vgsd92s.apps.googleusercontent.com',
    iosBundleId: 'com.example.adminResortBookingApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAPL3VtELxEtbmVDS59rwo1dL7W4L0z9T4',
    appId: '1:938553968662:web:a2d887dbd6c2be69918d37',
    messagingSenderId: '938553968662',
    projectId: 'stayscape-resort-booking-app',
    authDomain: 'stayscape-resort-booking-app.firebaseapp.com',
    storageBucket: 'stayscape-resort-booking-app.firebasestorage.app',
    measurementId: 'G-HV76F00RKY',
  );
}
