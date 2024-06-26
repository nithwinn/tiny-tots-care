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
    apiKey: 'AIzaSyDSqH4gFpqYdzPILduU3Vgjag5zyfP7jNk',
    appId: '1:97982959350:web:455393593de684bc0526d7',
    messagingSenderId: '97982959350',
    projectId: 'tiny-toe-care',
    authDomain: 'tiny-toe-care.firebaseapp.com',
    storageBucket: 'tiny-toe-care.appspot.com',
    measurementId: 'G-GNHJRYZ9WE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCroaRg8XteDFI96rB4YHh5mt4zoX_EwWk',
    appId: '1:97982959350:android:1b68166f5797a5670526d7',
    messagingSenderId: '97982959350',
    projectId: 'tiny-toe-care',
    storageBucket: 'tiny-toe-care.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDoyejkPzMVqD5_ROZtGqqYD_1BQ8OS0IE',
    appId: '1:97982959350:ios:1715ee5596d820c70526d7',
    messagingSenderId: '97982959350',
    projectId: 'tiny-toe-care',
    storageBucket: 'tiny-toe-care.appspot.com',
    iosBundleId: 'com.example.tinyTotsCare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDoyejkPzMVqD5_ROZtGqqYD_1BQ8OS0IE',
    appId: '1:97982959350:ios:2e2c01164cf563280526d7',
    messagingSenderId: '97982959350',
    projectId: 'tiny-toe-care',
    storageBucket: 'tiny-toe-care.appspot.com',
    iosBundleId: 'com.example.tinyTotsCare.RunnerTests',
  );
}
