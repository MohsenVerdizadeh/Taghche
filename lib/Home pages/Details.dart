import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Bookdetails extends StatefulWidget {
  /*final String title;
  final String author;
  final String details;
  final String imageUrl;*/

  const Bookdetails({
    Key? key,
    /*required this.title,
      required this.author,
      required this.details,
      required this.imageUrl*/
  }) : super(key: key);

  @override
  State<Bookdetails> createState() => _BookdetailsState();
}

class _BookdetailsState extends State<Bookdetails> {
  double _rating = 3.0;

  // final Book book;
  //
  // _BookdetailsState(this.book);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(0xFF232323),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
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
          SizedBox(
            height: 20,
          ),
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
          SizedBox(
            height: 20,
          ),
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
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_border_outlined,
                    color: Color(0xFF3dd9d6),
                  )),
              SizedBox(
                width: 60,
              ),
              RatingBar.builder(
                itemSize: 20,
                initialRating: _rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) =>
                    Icon(
                      Icons.star,
                      color: Color(0xFF3dd9d6),
                    ),
                onRatingUpdate: (rating) {
                  setState(() {
                    _rating = rating;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xFF3dd9d6),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Shop | \$5' /*book.price*/,
                  style: TextStyle(
                      color: Color(0xFF297171),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF3dd9d6)),
                  color: Color(0xFF297171),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Example' /*book.price*/,
                  style: TextStyle(
                      color: Color(0xFF3dd9d6),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Welcome to this course on Flutter Tutorials for beginners. Flutter is an open-source UI software development kit created by Google.Flutter is SDK that makes creating high-performing, modern and good looking apps. Flutter is easy and Works for both Android and iOS. Flutter is An open-source toolkit, developed by Google.'
                ,
                style: TextStyle(
                  color: Color(0xFF3dd9d6),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OoohBaby',
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}