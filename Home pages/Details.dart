import 'package:flutter/material.dart';
import 'package:sample/oop%20classes/Book.dart';

class Bookdetails extends StatefulWidget {
  /*final String title;
  final String author;
  final String details;
  final String imageUrl;*/

  const Bookdetails(
      {Key? key,
      /*required this.title,
      required this.author,
      required this.details,
      required this.imageUrl*/})
      : super(key: key);

  @override
  State<Bookdetails> createState() => _BookdetailsState();
}

class _BookdetailsState extends State<Bookdetails> {
  // final Book book;
  //
  // _BookdetailsState(this.book);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232323),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Center(
            child: Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF3dd9d6)),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(/*book.imageUrl*/ 'assets/images/1.png'),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text(
              'How to program java',
              style: TextStyle(
                color: Color(0xFF3dd9d6),
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontFamily: 'OoohBaby',
              ),
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child: Text(
              'ditel and ditel',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'OoohBaby',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
