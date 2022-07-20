import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon/Constants/textConstants.dart';
import 'package:hackathon/Functions/loginbutton.dart';
import '../Constants/colorConstants.dart';
import '../Functions/button.dart';
import '../Functions/selectedcircle.dart';

class SpecifyMeasurements extends StatefulWidget {
  const SpecifyMeasurements({Key? key}) : super(key: key);

  @override
  State<SpecifyMeasurements> createState() => _SpecifyMeasurementsState();
}

class _SpecifyMeasurementsState extends State<SpecifyMeasurements> {
  final List _materials = [
    "Lace",
    "Ankara",
    "Guinea",
    "Linen",
    "Silk",
    "Wool",
    "Cotton"
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TextConstant.specifymaterial,
          style: TextStyle(color: Color(ColorConstant.blackcolor)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 5, 35, 5),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 35, 5),
                        child: Text(
                          TextConstant.material,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.47,
                    child: ListView.builder(
                        itemCount: _materials.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: ListTile(
                                title: Text(
                                  "${_materials[index]}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                textColor: selectedIndex == index
                                    ? Color(ColorConstant.magento)
                                    : null,
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                }),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 35, 5),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          TextConstant.enterthecolor,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 35, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        selectedcircle(Color(ColorConstant.circle1)),
                        selectedcircle(Color(ColorConstant.circle2)),
                        selectedcircle(Color(ColorConstant.circle3)),
                        selectedcircle(Colors.blue),
                        selectedcircle(Colors.orange),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 35, 5),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        TextConstant.howmanyyards,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(ColorConstant.textfield),
                        border: InputBorder.none,
                      ),
                      initialValue: "5",
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.09,
                child: button(ColorConstant.magento, TextConstant.done,
                    ColorConstant.whitecolor, context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
