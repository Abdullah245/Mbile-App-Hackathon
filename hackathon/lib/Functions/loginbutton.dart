// ignore_for_file: unused_local_variable, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Functions/addcart.dart';
import 'package:hackathon/Pages/bottomnavigationbar.dart';

loginbutton(context, text, clr, econ, pcon) {
  return ElevatedButton(
    onPressed: () async {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: econ.text, password: pcon.text);
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const MyNavigationBar()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          dialogBox(context, 'No user found for that email.');
        } else if (e.code == 'wrong-password') {
          dialogBox(context, 'Wrong password provided for that user.');
        }
      }
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Color(clr),
      ),
    ),
    child: Text(
      text,
      style: TextStyle(color: Color(ColorConstant.whitecolor)),
    ),
  );
}
