import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/Functions/listile.dart';
import 'package:hackathon/Pages/paymentdone.dart';

import '../Constants/colorConstants.dart';
import '../Constants/imageConstants.dart';
import '../Functions/loginbutton.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Cart",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search, size: 30),
                        ),
                        SizedBox(
                            child: Image(
                          image: AssetImage(ImageConstants.img8),
                        )),
                      ],
                    ),
                  ),
                )
              ]),
              listtile(ImageConstants.img4, "Hawaian Shirt", "Sandy Williams",
                  "\$25.99"),
              listtile(ImageConstants.img4, "Hawaian Shirt", "Sandy Williams",
                  "\$25.99"),
              listtile(ImageConstants.img4, "Hawaian Shirt", "Sandy Williams",
                  "\$25.99"),
              listtile(ImageConstants.img4, "Hawaian Shirt", "Sandy Williams",
                  "\$25.99"),
              listtile(ImageConstants.img4, "Hawaian Shirt", "Sandy Williams",
                  "\$25.99"),
              listtile(ImageConstants.img4, "Hawaian Shirt", "Sandy Williams",
                  "\$25.99"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total:",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Text(
                    "\$25.99",
                    style: TextStyle(
                      color: Color(ColorConstant.magento),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => PaymentSuccesful()),
                          ),
                        );
                      },
                      child: Text(
                        "Pay Now",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(ColorConstant.magento),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
