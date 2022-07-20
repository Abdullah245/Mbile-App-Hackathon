
import 'package:flutter/material.dart';
import 'package:hackathon/Constants/textConstants.dart';
import '../Constants/colorConstants.dart';
import '../Constants/imageConstants.dart';
import '../Functions/shopnowbutton.dart';

class SwipeScreen3 extends StatelessWidget {
  const SwipeScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image(
          image: AssetImage(ImageConstants.img4),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        Positioned(
          top: 60,
          left: 150,
          child: SizedBox(
            width: 40,
            height: 40,
            child: Image(
              image: AssetImage(ImageConstants.img1),
            ),
          ),
        ),
        Positioned(
          bottom: 300,
          left: 30,
          child: Row(
            children: [
              Text(
                TextConstant.no,
                style: TextStyle(
                    color: Color(ColorConstant.whitecolor),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    decoration: TextDecoration.underline),
              ),
              Text(
                TextConstant.three,
                style: TextStyle(
                  color: Color(ColorConstant.whitecolor),
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 270,
          left: 30,
          child: Text(
            TextConstant.featured,
            style: TextStyle(
              color: Color(ColorConstant.featured),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        Positioned(
          bottom: 210,
          left: 30,
          child: Text(
            TextConstant.tailored,
            style:  TextStyle(
              color: Color(ColorConstant.whitecolor),
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ),
        Positioned(
          bottom: 150,
          left: 30,
          child: Text(
            TextConstant.message3,
            style:  TextStyle(
              color: Color(ColorConstant.whitecolor),
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Positioned(
          bottom: 80,
          left: 30,
          child: shopnow(TextConstant.shopnow, context),
        ),
      ],
    ));
  }
}
