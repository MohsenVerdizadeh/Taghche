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
     // backgroundColor: const Color(0xFF232323),
      appBar: AppBar(
        backgroundColor: Color(0xFF297171),
        title: Center(
          child: Text(
            'Shop        ',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'OoohBaby',
              fontWeight: FontWeight.bold,
              color: Color(0xFF3dd9d6),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF297171),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 5),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      hintText: 'Search'),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
