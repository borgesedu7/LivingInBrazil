import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDwHkOCRj8aSv0owL9rzMtgEmg260O0NMc",
            authDomain: "lib-login-2182a.firebaseapp.com",
            projectId: "lib-login-2182a",
            storageBucket: "lib-login-2182a.appspot.com",
            messagingSenderId: "1065339622421",
            appId: "1:1065339622421:web:e3585b5ae5de4c8de8aa1c",
            measurementId: "G-G9MWNQFSJG"));
  } else {
    await Firebase.initializeApp();
  }
}
