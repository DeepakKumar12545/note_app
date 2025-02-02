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
    apiKey: 'AIzaSyBiBknAmxx2VQNgoTPbyrP6nXDhiPFS44A',
    appId: '1:832792770399:web:444183ce6d3513067728ea',
    messagingSenderId: '832792770399',
    projectId: 'dumyfire-ff84e',
    authDomain: 'dumyfire-ff84e.firebaseapp.com',
    storageBucket: 'dumyfire-ff84e.appspot.com',
    measurementId: 'G-XVJEMXT967',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDFsRij6fwDr6UlicdrI57vjRAyhlHV64o',
    appId: '1:832792770399:android:f9de1c04a259f0fa7728ea',
    messagingSenderId: '832792770399',
    projectId: 'dumyfire-ff84e',
    storageBucket: 'dumyfire-ff84e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdRsFVkRIFN4MkzHsS78hzv7bmF8Dkhkk',
    appId: '1:832792770399:ios:3b907a6094afbb327728ea',
    messagingSenderId: '832792770399',
    projectId: 'dumyfire-ff84e',
    storageBucket: 'dumyfire-ff84e.appspot.com',
    iosBundleId: 'com.example.flutterDumy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCdRsFVkRIFN4MkzHsS78hzv7bmF8Dkhkk',
    appId: '1:832792770399:ios:3b907a6094afbb327728ea',
    messagingSenderId: '832792770399',
    projectId: 'dumyfire-ff84e',
    storageBucket: 'dumyfire-ff84e.appspot.com',
    iosBundleId: 'com.example.flutterDumy',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBiBknAmxx2VQNgoTPbyrP6nXDhiPFS44A',
    appId: '1:832792770399:web:9a510e75ec027f157728ea',
    messagingSenderId: '832792770399',
    projectId: 'dumyfire-ff84e',
    authDomain: 'dumyfire-ff84e.firebaseapp.com',
    storageBucket: 'dumyfire-ff84e.appspot.com',
    measurementId: 'G-MK8WJ66KJC',
  );
}
