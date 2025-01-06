import 'package:flutter/material.dart';
import 'package:portfolio/routes.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC_UROEyRFfeuAwYhCQ38mQTMfA2h0Wq4Q",
            authDomain: "naman-portfolio-62a59.firebaseapp.com",
            projectId: "naman-portfolio-62a59",
            storageBucket: "naman-portfolio-62a59.firebasestorage.app",
            messagingSenderId: "990155202464",
            appId: "1:990155202464:web:a34c3e816f42a794f1cec5",
            measurementId: "G-NJGLVD3LY6"));
  } else {
    await Firebase.initializeApp();
  }
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: "/",
    );
  }
}
