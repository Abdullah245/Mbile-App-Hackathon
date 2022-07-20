import 'package:flutter/material.dart';
import 'package:hackathon/Constants/textConstants.dart';
import '../Constants/colorConstants.dart';
import '../Constants/imageConstants.dart';


class SwipeScreen4 extends StatelessWidget {
  const SwipeScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(ImageConstants.img5),
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Positioned(
            left: 60,
            child: Image(
              image: AssetImage(ImageConstants.img6),
            ),
          ),
          Positioned(
            bottom: 110,
            left: 5,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                primary: Colors.red.withOpacity(0),
                shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(2),
                    ),
                    side: BorderSide(color: Color(ColorConstant.whitecolor))),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                size: 30,
              ),
              label: Padding(
                padding: const EdgeInsets.all(9),
                child: Text(
                  TextConstant.continuewithinstagram,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 10,
            child: Text(
              TextConstant.message4,
              style: TextStyle(
                color: Color(ColorConstant.whitecolor),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
