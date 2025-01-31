// lib/firebase_options.dart

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart';

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return const FirebaseOptions(
          apiKey: "AIzaSyBcLLYsJ1xSY9atHYd0HrKAK6Yw12GlkDM",
          authDomain: "todo-app-e804b.firebaseapp.com",
          projectId: "todo-app-e804b",
          storageBucket: "todo-app-e804b.firebasestorage.app",
          messagingSenderId: "258451702027",
          appId: "1:258451702027:web:204a2f47c8f83512a9a20e",
          measurementId: "G-RY9WLW42J2");
    } else {
      return const FirebaseOptions(
        apiKey: "AIzaSyCKIcU3hKMmm_ixUy7qax1OG5P0HQATo3s",
        appId: "1:258451702027:ios:7802ac3b0cb63251a9a20e",
        messagingSenderId: "258451702027",
        projectId: "todo-app-e804b",
        storageBucket: "todo-app-e804b.firebasestorage.app",
      );
    }
  }
}
