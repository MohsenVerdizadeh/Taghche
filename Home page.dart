import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sample/Home%20pages/Home.dart';
import 'package:sample/Home%20pages/Library.dart';
import 'package:sample/Sign%20up.dart';

import 'Home pages/Account.dart';
import 'Home pages/Shop.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_page();
}

class _Home_page extends State<Home_page> {
  final items = const [
    Icon(
      Icons.home_outlined,
      color: Color(0xFF3dd9d6),
    ),
    Icon(
      Icons.library_books_outlined,
      color: Color(0xFF3dd9d6),
    ),
    Icon(
      Icons.account_circle_outlined,
      color: Color(0xFF3dd9d6),
    ),
    Icon(
      Icons.shopping_bag_outlined,
      color: Color(0xFF3dd9d6),
    ),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: getSelectedWidget(index: index),
      ),
      backgroundColor: Color(0xFF232323),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Color(0xFF232323),
        color: Color(0xFF297171),
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
      ),
    );
  }

  Widget? getSelectedWidget({required int index}) {
    Widget? widget;
    switch (index) {
      case 0:
        widget = const Home();
        break;
      case 1:
        widget = const Library();
        break;
      case 2:
        widget = const Account();
        break;
      case 3:
        widget = const Shop();
        break;
    }
    return widget;
  }
}
