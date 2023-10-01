import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB2rnR8haLaYgKZDlFVKdwQeDejEiLwN7I",
            authDomain: "living-in-brazil.firebaseapp.com",
            projectId: "living-in-brazil",
            storageBucket: "living-in-brazil.appspot.com",
            messagingSenderId: "331626457458",
            appId: "1:331626457458:web:f4881ba94013128a8715eb"));
  } else {
    await Firebase.initializeApp();
  }
}
