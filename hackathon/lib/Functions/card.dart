import 'package:flutter/material.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:like_button/like_button.dart';

card(i1, t1, t2, t3, t4, i2, i3, i4, i5, i6, t5, t6, t7,context, page) {
  return Card(
    margin: const EdgeInsets.all(14),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => page),
                ),
              );
      },
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(i1),
                  ),
                ),
                Column(children: [
                  Text(
                    t1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(t2, style: const TextStyle(fontSize: 14)),
                ]),
              ]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  const LikeButton(
                    size: 15,
                  ),
                  Text(t3),
                ]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              t4,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                  height: 200,
                  child: Image(image: AssetImage(i2)),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 90,
                      child: Image(image: AssetImage(i3)),
                    ),
                    SizedBox(
                      width: 70,
                      height: 90,
                      child: Image(image: AssetImage(i4)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 70,
                      height: 90,
                      child: Image(image: AssetImage(i5)),
                    ),
                    SizedBox(
                      width: 70,
                      height: 90,
                      child: Image(image: AssetImage(i6)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        t5,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            backgroundColor: Color(ColorConstant.magento)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        t6,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            backgroundColor: Color(ColorConstant.magento)),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    ),
                    Text(t7),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}
