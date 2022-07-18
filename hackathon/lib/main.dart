import 'package:flutter/material.dart';
import 'package:hackathon/Pages/bottomnavigationbar.dart';
import 'package:hackathon/Pages/home.dart';
import 'package:hackathon/Pages/login.dart';
import 'package:hackathon/Pages/productpage.dart';
import 'package:hackathon/Pages/splash.dart';
import 'package:hackathon/Pages/swipescreen1.dart';
import 'package:hackathon/Pages/swipescreen2.dart';
import 'package:hackathon/Pages/swipescreen3.dart';
import 'package:hackathon/Pages/swipescreen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Splash()),
    );
  }
}
