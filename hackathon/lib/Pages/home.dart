import 'package:flutter/material.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Pages/searchingcards.dart';
import 'package:hackathon/Pages/women.dart';
import '../Constants/imageConstants.dart';
import '../Constants/textConstants.dart';
import 'child.dart';
import 'men.dart';
import 'package:getwidget/getwidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List list = [
    "Agbada",
    "Ankara",
    "T-Shirt",
    "Danshiki",
    "Anara",
    "Shirt",
    "Dans"
  ];
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
                child: Text(TextConstant.women,
                    style: TextStyle(color: Color(ColorConstant.blackcolor))),
              ),
              Tab(
                child: Text(TextConstant.men,
                    style: TextStyle(color: Color(ColorConstant.blackcolor))),
              ),
              Tab(
                child: Text(TextConstant.child,
                    style: TextStyle(color: Color(ColorConstant.blackcolor))),
              ),
            ],
          ),
          backgroundColor: Color(ColorConstant.whitecolor),
          title: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: GFSearchBar(
                    searchList: list,
                    searchQueryBuilder: (query, list) {
                      return list
                          .where((item) => item
                              .toString()
                              .toLowerCase()
                              .contains(query.toLowerCase()))
                          .toList();
                    },
                    overlaySearchListItemBuilder: (dynamic item) {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          item,
                          style: const TextStyle(fontSize: 18),
                        ),
                      );
                    },
                    onItemSelected: (item) {},
                  ),
                ),
              ),
              SizedBox(
                  child: Image(
                image: AssetImage(ImageConstants.img8),
              )),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Women(),
            Men(),
            Children(),
          ],
        ),
      ),
    );
  }
}
