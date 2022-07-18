import 'package:flutter/material.dart';

import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Constants/imageConstants.dart';
import 'package:hackathon/Constants/textConstants.dart';
import 'package:hackathon/Functions/textfield.dart';

import '../Functions/loginbutton.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Image(
                  image: AssetImage(ImageConstants.img7),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Color(ColorConstant.textfield),
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: textField(ColorConstant.textfield, Icons.person,
                            "Your Email", false)),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: textField(ColorConstant.textfield, Icons.lock,
                            "Password", true)),
                    loginbutton(context,TextConstant.login, ColorConstant.magento),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(TextConstant.line),
                    ),
                    loginbutton(context,
                        TextConstant.loginwthphone, ColorConstant.magento),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        TextConstant.createaccount,
                        style: TextStyle(
                            color: Color(
                              ColorConstant.createaccount,
                            ),
                            fontSize: 18),
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
