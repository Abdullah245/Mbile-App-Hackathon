import 'package:flutter/material.dart';
import 'package:hackathon/Constants/colorConstants.dart';
import 'package:hackathon/Pages/add.dart';
import 'package:hackathon/Pages/home.dart';
import 'package:hackathon/Pages/setting.dart';
import 'package:hackathon/Pages/shop.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Shop(),
    const Setting(),
    const Add(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                  Icons.home_outlined,
                )),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.settings_outlined,
              ),
            ),
            BottomNavigationBarItem(
              label: "",
              icon: Icon(
                Icons.add,
              ),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Color(ColorConstant.magento),
          iconSize: 35,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
