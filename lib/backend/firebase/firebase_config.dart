import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA11NvJzOWd4YyB_zefsOFAVZfWzut79ms",
            authDomain: "todo-app-18b19.firebaseapp.com",
            projectId: "todo-app-18b19",
            storageBucket: "todo-app-18b19.appspot.com",
            messagingSenderId: "401663679371",
            appId: "1:401663679371:web:0f1b901ace1985e3dfad8e"));
  } else {
    await Firebase.initializeApp();
  }
}
