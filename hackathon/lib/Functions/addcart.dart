import 'package:flutter/material.dart';
import 'package:hackathon/Constants/colorConstants.dart';

Future<void> dialogBox(BuildContext context, alertText) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert'),
          content: Text(alertText),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Ok',
                  style: TextStyle(color: Color(ColorConstant.magento)),
                ))
          ],
        );
      });
}
