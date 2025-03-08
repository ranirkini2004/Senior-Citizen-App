import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAGd9WlCAYURDxLdOoLZ-9o--AHgEERC2E",
            authDomain: "test-39f73.firebaseapp.com",
            projectId: "test-39f73",
            storageBucket: "test-39f73.appspot.com",
            messagingSenderId: "147469684705",
            appId: "1:147469684705:web:eac5f8381f21b3a3510ca0",
            measurementId: "G-PJYRZJ3HX9"));
  } else {
    await Firebase.initializeApp();
  }
}
