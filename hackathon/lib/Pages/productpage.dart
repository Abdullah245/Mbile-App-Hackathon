import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Constants/textConstants.dart';

import '../Constants/imageConstants.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListView(
            shrinkWrap: true,
            children: [
              CarouselSlider(
                items: [
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(ImageConstants.img10),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(ImageConstants.img11),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(ImageConstants.img12),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(ImageConstants.img10),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.5,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                ),
              ),
            ],
          ),
        ),
        Text(
          "Perfect Situation Purple Long Sleeve Dress",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        Text(
          "\$25.99",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(ColorConstant.magento)),
        ),
      ],
    );
  }
}
