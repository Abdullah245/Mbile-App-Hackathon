import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Constants/imageConstants.dart';
import '../Constants/textConstants.dart';
import '../Functions/card.dart';

class Women extends StatelessWidget {
  const Women({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            card(
                ImageConstants.img9,
                TextConstant.SandyWilliams,
                TextConstant.FREELANEETAILOR,
                TextConstant.rating1,
                TextConstant.description,
                ImageConstants.img6,
                ImageConstants.img6,
                ImageConstants.img12,
                ImageConstants.img10,
                ImageConstants.img11,
                TextConstant.hashtag1,
                TextConstant.hashtag2,
                TextConstant.rating2),
            card(
                ImageConstants.img9,
                TextConstant.SandyWilliams,
                TextConstant.FREELANEETAILOR,
                TextConstant.rating1,
                TextConstant.description,
                ImageConstants.img6,
                ImageConstants.img6,
                ImageConstants.img12,
                ImageConstants.img10,
                ImageConstants.img11,
                TextConstant.hashtag1,
                TextConstant.hashtag2,
                TextConstant.rating2)
          ],
        ),
      ),
    );
  }
}
