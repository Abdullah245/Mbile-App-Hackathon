// ignore_for_file: avoid_print, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Functions/addcart.dart';
import 'package:hackathon/Pages/login.dart';

signup(context, text, clr, econ, pcon) {
  return ElevatedButton(
    onPressed: () async {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: econ.text,
          password: pcon.text,
        );
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Login()));
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          dialogBox(context, 'The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          dialogBox(context, 'The account already exists for that email.');
        }
      } catch (e) {
        dialogBox(context, e);
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
