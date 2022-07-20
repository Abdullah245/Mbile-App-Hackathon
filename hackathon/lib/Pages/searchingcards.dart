import 'package:flutter/material.dart';
import 'package:hackathon/Functions/smallcard.dart';
import '../Constants/imageConstants.dart';
import '../Constants/textConstants.dart';

class SearchingMaterial extends StatelessWidget {
  const SearchingMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                smallcard(
                    context,
                    ImageConstants.img15,
                    TextConstant.price,
                    TextConstant.whitestrapplungetop,
                    ImageConstants.img20,
                    TextConstant.sandywilliams),
                smallcard(
                    context,
                    ImageConstants.img16,
                    TextConstant.price,
                    TextConstant.greywintercardigan,
                    ImageConstants.img19,
                    TextConstant.sandywilliams),
              ],
            ),
            Row(
              children: [
                smallcard(
                    context,
                    ImageConstants.img17,
                    TextConstant.price,
                    TextConstant.whitestrapplungetop,
                    ImageConstants.img19,
                    TextConstant.sandywilliams),
                smallcard(
                    context,
                    ImageConstants.img18,
                    TextConstant.price,
                    TextConstant.greywintercardigan,
                    ImageConstants.img20,
                    TextConstant.sandywilliams),
              ],
            ),
            Row(
              children: [
                smallcard(
                    context,
                    ImageConstants.img15,
                    TextConstant.price,
                    TextConstant.whitestrapplungetop,
                    ImageConstants.img20,
                    TextConstant.sandywilliams),
                smallcard(
                    context,
                    ImageConstants.img17,
                    TextConstant.price,
                    TextConstant.whitestrapplungetop,
                    ImageConstants.img19,
                    TextConstant.sandywilliams),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
