// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Constants/imageConstants.dart';
import 'package:hackathon/Constants/textConstants.dart';
import 'package:hackathon/Functions/button.dart';
import 'package:hackathon/Functions/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hackathon/Pages/signup.dart';
import '../Functions/loginbutton.dart';
import 'bottomnavigationbar.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                        padding: const EdgeInsets.all(10),
                        child: textField(ColorConstant.textfield, Icons.person,
                            TextConstant.youremail, false, emailController)),
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: textField(ColorConstant.textfield, Icons.lock,
                            TextConstant.password, true, passwordController)),
                    loginbutton(
                        context,
                        TextConstant.login,
                        ColorConstant.magento,
                        emailController,
                        passwordController),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(TextConstant.line),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: ElevatedButton(
                        onPressed: () async {
                          signInWithGoogle();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyNavigationBar()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(ColorConstant.whitecolor),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: SizedBox(
                                width: 15,
                                height: 15,
                                child: Image(
                                  image: AssetImage(ImageConstants.img21),
                                ),
                              ),
                            ),
                            Text(
                              TextConstant.loginwthgoogle,
                              style: TextStyle(
                                  color: Color(ColorConstant.blackcolor)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Signup()),
                          ),
                        );
                      },
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

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
