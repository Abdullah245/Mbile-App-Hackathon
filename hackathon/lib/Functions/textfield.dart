import 'package:flutter/material.dart';

textField(clr, i, t, bool b) {
  return TextField(
    obscureText: b,
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
      filled: true,
      fillColor: Color(clr),
      prefixIcon: Icon(i),
      hintText: t,
    ),
  );
}
