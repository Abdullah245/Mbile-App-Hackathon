import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Constants/textConstants.dart';
import 'package:hackathon/Functions/loginbutton.dart';
import 'package:hackathon/Functions/selectedcircle.dart';
import 'package:hackathon/Pages/shop.dart';
import 'package:hackathon/Pages/specifymeasurements.dart';

import '../Functions/addcart.dart';
import '../Functions/button.dart';

class Measurement extends StatefulWidget {
  const Measurement({Key? key}) : super(key: key);

  @override
  State<Measurement> createState() => _MeasurementState();
}

class _MeasurementState extends State<Measurement> {
  String dropdownvalue = '1';
  var items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(TextConstant.waist),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        initialValue: TextConstant.initalvalue1,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(TextConstant.length),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        initialValue: TextConstant.initalvalue2,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(TextConstant.breadth),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        initialValue: TextConstant.initalvalue3,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(TextConstant.color),
                selectedcircle(Color(ColorConstant.circle1)),
                selectedcircle(Color(ColorConstant.circle2)),
                selectedcircle(Color(ColorConstant.circle3)),
                DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ],
            ),
            Text(TextConstant.message5),
            Row(
              children: [
                SizedBox(
                  width: 60,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color(ColorConstant.magento))),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Shop()),
                        );
                      },
                      child: Text(
                        TextConstant.yes,
                        style:
                            TextStyle(color: Color(ColorConstant.whitecolor)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const SpecifyMeasurements())));
                    },
                    child: Text(
                      TextConstant.nope,
                      style: TextStyle(
                        color: Color(ColorConstant.blackcolor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(TextConstant.total),
                    Text(TextConstant.price),
                  ],
                ),
                SizedBox(
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

CollectionReference addToCart = FirebaseFirestore.instance.collection('Cart');
Future<void> addcart(text1, text2, i) {
  return addToCart
      .add({'Product': text1, 'Price': text2, 'Done': i})
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}
