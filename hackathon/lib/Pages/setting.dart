import 'package:flutter/material.dart';
import 'package:hackathon/Constants/textConstants.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(TextConstant.setting),
      ),
    );
  }
}
