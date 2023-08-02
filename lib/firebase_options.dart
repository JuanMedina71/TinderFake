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
    apiKey: 'AIzaSyDomS6UMiVYowoB0RuWIBC6CYfgZEinj50',
    appId: '1:933172042748:web:1d914149d62371edaf7079',
    messagingSenderId: '933172042748',
    projectId: 'flutter-dating-app-94469',
    authDomain: 'flutter-dating-app-94469.firebaseapp.com',
    storageBucket: 'flutter-dating-app-94469.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBzj62pXxf3_Y2W-3g6bt8L-_j4kpgUeAk',
    appId: '1:933172042748:android:0a8874ebe673bad6af7079',
    messagingSenderId: '933172042748',
    projectId: 'flutter-dating-app-94469',
    storageBucket: 'flutter-dating-app-94469.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCxTh7x_z6NcjE0ZA35y1mna5ykRRorNEY',
    appId: '1:933172042748:ios:b988146f64f621ccaf7079',
    messagingSenderId: '933172042748',
    projectId: 'flutter-dating-app-94469',
    storageBucket: 'flutter-dating-app-94469.appspot.com',
    iosClientId: '933172042748-19mneqndhskkqkosk29pp18c7a7f9392.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerce',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCxTh7x_z6NcjE0ZA35y1mna5ykRRorNEY',
    appId: '1:933172042748:ios:70e954f91714ef7daf7079',
    messagingSenderId: '933172042748',
    projectId: 'flutter-dating-app-94469',
    storageBucket: 'flutter-dating-app-94469.appspot.com',
    iosClientId: '933172042748-o0225bfb1o057iu9abkgs3hsaep1g7ne.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerce.RunnerTests',
  );
}