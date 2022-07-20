import 'package:flutter/material.dart';
import 'package:hackathon/Pages/home.dart';
import 'package:hackathon/Pages/measurement.dart';
import 'package:hackathon/Pages/productpage.dart';
import 'package:hackathon/Pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Pages/bottomnavigationbar.dart';
import 'Pages/login.dart';
import 'Pages/splash.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Splash(),
      ),
    );
  }
}
