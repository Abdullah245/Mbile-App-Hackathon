import 'package:flutter/material.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Constants/textConstants.dart';
import 'package:hackathon/Pages/bottomnavigationbar.dart';

class PaymentSuccesful extends StatelessWidget {
  const PaymentSuccesful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundColor: Color(ColorConstant.greencolor),
                radius: 30,
                child: const Icon(Icons.check, size: 40),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                TextConstant.paymentsuccessfull,
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.center,
                TextConstant.paymentmessage,
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                TextConstant.thanks,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color(ColorConstant.magento))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => MyNavigationBar())));
                    },
                    child: Text(
                      TextConstant.continueshopping,
                      style: TextStyle(
                          color: Color(ColorConstant.whitecolor), fontSize: 20),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
