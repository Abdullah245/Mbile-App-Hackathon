import 'package:flutter/material.dart';
import 'package:hackathon/Pages/login.dart';

shopnow(text,context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const Login())));
    },
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      primary: Colors.red.withOpacity(0),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(2),
          ),
          side: BorderSide(color: Colors.white)),
    ),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(63, 8, 63, 8),
      child: Text(text,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    ),
  );
}
