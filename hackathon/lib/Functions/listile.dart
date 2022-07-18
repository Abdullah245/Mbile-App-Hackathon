import 'package:flutter/material.dart';

listtile(img, t1, t2, t3) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      leading: SizedBox(
        width: 40,
        height: 40,
        child: Image(image: AssetImage(img)),
      ),
      title: Text(t1),
      subtitle: Text(t2),
      trailing: Text(t3),
      tileColor: Colors.white,
    ),
  );
}
