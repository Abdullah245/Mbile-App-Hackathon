import 'package:flutter/material.dart';
import 'package:hackathon/Pages/login.dart';

shopnow(text,context) {
  return ElevatedButton(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(63, 8, 63, 8),
      child: Text(text,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    ),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: ((context) => Login())));
    },
    style: ElevatedButton.styleFrom(
      elevation: 0.0,
      primary: Colors.red.withOpacity(0),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(2),
          ),
          side: BorderSide(color: Colors.white)),
    ),
  );
}
