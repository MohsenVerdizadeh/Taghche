import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sample/Sign%20up.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_page();
}

class _Home_page extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232323),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Color(0xFF232323),
        color: Color(0xFF297171),
        items: [
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
        ],
      ),
    );
  }
}
