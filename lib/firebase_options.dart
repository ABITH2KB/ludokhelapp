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
    apiKey: 'AIzaSyD7rx7I98Mg1A0C-Dxdbek2SRqNatgwosI',
    appId: '1:181849271065:web:2c07498c3fb37d42e3b388',
    messagingSenderId: '181849271065',
    projectId: 'ludo1-c6244',
    authDomain: 'ludo1-c6244.firebaseapp.com',
    storageBucket: 'ludo1-c6244.appspot.com',
    measurementId: 'G-CJJGK3J62C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNPhWnOl-08xdMpjqPzBxiJdUQ5vi4GmA',
    appId: '1:181849271065:android:80e8186ac9e338f7e3b388',
    messagingSenderId: '181849271065',
    projectId: 'ludo1-c6244',
    storageBucket: 'ludo1-c6244.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCT8jBMK6DscaG7-k7Eam5pIGuUjohr_nQ',
    appId: '1:181849271065:ios:d03436f8ec2392e1e3b388',
    messagingSenderId: '181849271065',
    projectId: 'ludo1-c6244',
    storageBucket: 'ludo1-c6244.appspot.com',
    iosBundleId: 'com.example.ludokhel2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCT8jBMK6DscaG7-k7Eam5pIGuUjohr_nQ',
    appId: '1:181849271065:ios:d03436f8ec2392e1e3b388',
    messagingSenderId: '181849271065',
    projectId: 'ludo1-c6244',
    storageBucket: 'ludo1-c6244.appspot.com',
    iosBundleId: 'com.example.ludokhel2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD7rx7I98Mg1A0C-Dxdbek2SRqNatgwosI',
    appId: '1:181849271065:web:e8790d0fed92c534e3b388',
    messagingSenderId: '181849271065',
    projectId: 'ludo1-c6244',
    authDomain: 'ludo1-c6244.firebaseapp.com',
    storageBucket: 'ludo1-c6244.appspot.com',
    measurementId: 'G-3QRSBK79Z4',
  );
}
