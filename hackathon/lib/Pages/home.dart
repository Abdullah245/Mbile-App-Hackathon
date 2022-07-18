import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Constants/textConstants.dart';
import 'package:hackathon/Functions/textfield.dart';
import 'package:hackathon/Pages/bottomnavigationbar.dart';
import 'package:hackathon/Pages/women.dart';

import '../Constants/imageConstants.dart';
import '../Functions/card.dart';
import 'child.dart';
import 'men.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("Women", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("Men", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("Child", style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          title: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: textField(ColorConstant.textfield, Icons.search,
                        "Search", false)),
              ),
              SizedBox(
                  child: Image(
                image: AssetImage(ImageConstants.img8),
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Women(),
            Men(),
            Children(),
          ],
        ),
        // bottomNavigationBar: MyNavigationBar(),
      ),
    );
  }
}
