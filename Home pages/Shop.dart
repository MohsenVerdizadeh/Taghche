import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF232323),
      appBar: AppBar(
        backgroundColor: Color(0xFF297171),
        title: Text(
          'Shop',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'OoohBaby',
            fontWeight: FontWeight.bold,
            color: Color(0xFF3dd9d6),
          ),
        ),
      ),
      body: ListView(

      ),
    );
  }
}
