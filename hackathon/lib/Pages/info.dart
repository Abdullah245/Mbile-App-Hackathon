import 'package:flutter/material.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Constants/textConstants.dart';
import 'package:hackathon/Functions/addcart.dart';
import 'package:hackathon/Pages/shop.dart';

import 'measurement.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                TextConstant.material,
                style: const TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              TextConstant.message7,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    addcart("Product", "\$25.99", "Done");
                    addToCart;
                    dialogBox(context, "Added to Cart");
                  },
                  child: Text(TextConstant.addtobag),
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(Colors.grey),
                      backgroundColor: MaterialStateProperty.all(
                          Color(ColorConstant.magento))),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
