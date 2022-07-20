import 'package:flutter/material.dart';
import 'package:hackathon/Pages/shop.dart';

button(clr1,text,clr2,context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Shop()));
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        Color(clr1),
      ),
    ),
    child: Text(
      text,
      style: TextStyle(color: Color(clr2)),
    ),
  );
}
