import 'package:flutter/material.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Constants/imageConstants.dart';
import 'package:hackathon/Constants/textConstants.dart';
import 'package:hackathon/Functions/signup.dart';
import 'package:hackathon/Functions/textfield.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _LoginState();
}

class _LoginState extends State<Signup> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              const SizedBox(
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
                      padding: const EdgeInsets.all(25),
                      child: Text(
                        TextConstant.registeration,
                        style: TextStyle(
                            color: Color(ColorConstant.magento),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: textField(ColorConstant.textfield, Icons.person,
                            TextConstant.youremail, false, emailController)),
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: textField(ColorConstant.textfield, Icons.lock,
                            TextConstant.password, true, passwordController)),
                    signup(context, TextConstant.signup, ColorConstant.magento,
                        emailController, passwordController),
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
