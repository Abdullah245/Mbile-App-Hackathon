import 'package:flutter/material.dart';

smallcard(context, img, price, text, img2, text2) {
  return Card(
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
                child: Image(
              image: AssetImage(img),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Text(text),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage(img2)),
                Text(
                  text2,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
