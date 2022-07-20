import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Constants/textConstants.dart';
import 'package:hackathon/Functions/listile.dart';
import 'package:hackathon/Pages/measurement.dart';
import 'package:hackathon/Pages/paymentdone.dart';
import '../Constants/colorConstants.dart';
import '../Constants/imageConstants.dart';

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
                    TextConstant.cart,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.search, size: 30),
                      ),
                      SizedBox(
                          child: Image(
                        image: AssetImage(ImageConstants.img8),
                      )),
                    ],
                  ),
                )
              ]),
              SizedBox(
                height: 100,
                child: FutureBuilder<QuerySnapshot>(
                  future: addToCart.get(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView(
                          children: snapshot.data!.docs
                              .map((DocumentSnapshot document) {
                        Map<String, dynamic> abc =
                            document.data()! as Map<String, dynamic>;
                        return ListTile(
                          title: Text(abc['Product']),
                          // subtitle: Text(abc['Price']),
                          // trailing: Text(abc['Done']),
                        );
                      }).toList());
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(TextConstant.total,
                      style: const TextStyle(
                        fontSize: 20,
                      )),
                  Text(
                    TextConstant.price,
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
                            builder: ((context) => const PaymentSuccesful()),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(ColorConstant.magento),
                        ),
                      ),
                      child: Text(
                        TextConstant.paynow,
                        style:
                            TextStyle(color: Color(ColorConstant.whitecolor)),
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
