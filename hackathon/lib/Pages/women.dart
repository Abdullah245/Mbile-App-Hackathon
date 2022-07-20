import 'package:flutter/material.dart';
import 'package:hackathon/Pages/productpage.dart';
import '../Constants/imageConstants.dart';

import '../Constants/textConstants.dart';
import '../Functions/card.dart';

class Women extends StatelessWidget {
  const Women({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          card(
              ImageConstants.img9,
              TextConstant.sandywilliams,
              TextConstant.freelancetailor,
              TextConstant.rating1,
              TextConstant.description,
              ImageConstants.img6,
              ImageConstants.img6,
              ImageConstants.img12,
              ImageConstants.img10,
              ImageConstants.img11,
              TextConstant.hashtag1,
              TextConstant.hashtag2,
              TextConstant.rating2,
              context,
              const ProductPage()),
          card(
              ImageConstants.img9,
              TextConstant.sandywilliams,
              TextConstant.freelancetailor,
              TextConstant.rating1,
              TextConstant.description,
              ImageConstants.img6,
              ImageConstants.img6,
              ImageConstants.img12,
              ImageConstants.img10,
              ImageConstants.img11,
              TextConstant.hashtag1,
              TextConstant.hashtag2,
              TextConstant.rating2,
              context,
              const ProductPage())
        ],
      ),
    );
  }
}
