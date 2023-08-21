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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD0H6Y8wJml0Y3M889LzRIMl8Iv66kJ6vA',
    appId: '1:657947704111:web:269e8b3dd190d179983fda',
    messagingSenderId: '657947704111',
    projectId: 'beehive-tutorial',
    authDomain: 'beehive-tutorial.firebaseapp.com',
    storageBucket: 'beehive-tutorial.appspot.com',
    measurementId: 'G-3RLFFYR80K',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfNM7jCBYXOpsIJuAHCf7ksb8Wc3USJF0',
    appId: '1:657947704111:android:29b4766f60c3f825983fda',
    messagingSenderId: '657947704111',
    projectId: 'beehive-tutorial',
    storageBucket: 'beehive-tutorial.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8V3mmwAXLaq_fMuKWzb9oRu-6Gx8r4KY',
    appId: '1:657947704111:ios:dde3a8b2c84bea85983fda',
    messagingSenderId: '657947704111',
    projectId: 'beehive-tutorial',
    storageBucket: 'beehive-tutorial.appspot.com',
    iosClientId: '657947704111-iihlpa96phamj53g51e1rboujah3376j.apps.googleusercontent.com',
    iosBundleId: 'com.example.beehive',
  );
}