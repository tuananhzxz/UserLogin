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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAlKGGObzue7Rn0Hz_eVk_3I7ZUWZ92pwU',
    appId: '1:754887964584:web:376c0327fe38315633cf9d',
    messagingSenderId: '754887964584',
    projectId: 'flutter-base-2753a',
    authDomain: 'flutter-base-2753a.firebaseapp.com',
    storageBucket: 'flutter-base-2753a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSTzsKeuR7dTJszR6Iq8d8t9sKOh_LYyk',
    appId: '1:754887964584:android:999c603c7dfb5f8d33cf9d',
    messagingSenderId: '754887964584',
    projectId: 'flutter-base-2753a',
    storageBucket: 'flutter-base-2753a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfin0lQ7hehtGBlgp7rT9qR3ROG9OgrBw',
    appId: '1:754887964584:ios:44cc1adc014c024033cf9d',
    messagingSenderId: '754887964584',
    projectId: 'flutter-base-2753a',
    storageBucket: 'flutter-base-2753a.appspot.com',
    iosBundleId: 'com.example.userapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfin0lQ7hehtGBlgp7rT9qR3ROG9OgrBw',
    appId: '1:754887964584:ios:2e68881ba34ed40b33cf9d',
    messagingSenderId: '754887964584',
    projectId: 'flutter-base-2753a',
    storageBucket: 'flutter-base-2753a.appspot.com',
    iosBundleId: 'com.example.userapp.RunnerTests',
  );
}
