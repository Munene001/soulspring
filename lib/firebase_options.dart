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
    apiKey: 'AIzaSyA9hoPCOegzYptYxcs6R5MYXszU8QimMoE',
    appId: '1:717365573323:web:ca09c08ac085783b3acd4e',
    messagingSenderId: '717365573323',
    projectId: 'soulspring-32d30',
    authDomain: 'soulspring-32d30.firebaseapp.com',
    storageBucket: 'soulspring-32d30.appspot.com',
    measurementId: 'G-0W7L85P5P9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBoxkUWAzMK6lzZc8NSFS65uFPrQbiltmg',
    appId: '1:717365573323:android:7426c36a0215ad983acd4e',
    messagingSenderId: '717365573323',
    projectId: 'soulspring-32d30',
    storageBucket: 'soulspring-32d30.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7XNTUR1X_-kFn1LWvagCG4a9e62WHtOM',
    appId: '1:717365573323:ios:65113a5d82976fe23acd4e',
    messagingSenderId: '717365573323',
    projectId: 'soulspring-32d30',
    storageBucket: 'soulspring-32d30.appspot.com',
    iosClientId: '717365573323-5h2ujgsuqoaggnno2rjnqnmduhl2iem5.apps.googleusercontent.com',
    iosBundleId: 'com.example.soulspring',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7XNTUR1X_-kFn1LWvagCG4a9e62WHtOM',
    appId: '1:717365573323:ios:53e5665ebec541a43acd4e',
    messagingSenderId: '717365573323',
    projectId: 'soulspring-32d30',
    storageBucket: 'soulspring-32d30.appspot.com',
    iosClientId: '717365573323-8epqm7ui4su2iv11s54fnvq6qmekgbg9.apps.googleusercontent.com',
    iosBundleId: 'com.example.soulspring.RunnerTests',
  );
}