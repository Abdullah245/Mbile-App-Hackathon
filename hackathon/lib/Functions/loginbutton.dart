import 'package:flutter/material.dart';
import 'package:hackathon/Pages/bottomnavigationbar.dart';

loginbutton(context, text, clr) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyNavigationBar()));
    },
    child: Text(
      text,
      style: TextStyle(color: Colors.white),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Color(clr),
      ),
    ),
  );
}
