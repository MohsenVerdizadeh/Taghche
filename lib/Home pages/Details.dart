import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/oop%20classes/Models.dart';
import 'package:project/oop%20classes/static_fields.dart';

class EbookDetails extends StatefulWidget {
  final Ebook ebook;

  EbookDetails({required this.ebook});

  @override
  State<EbookDetails> createState() => _EbookDetailsState();
}

class _EbookDetailsState extends State<EbookDetails> {
  String showMessage = '';

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
                  image: AssetImage(widget.ebook.imagePath),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              widget.ebook.name,
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
              widget.ebook.authorName,
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
                initialRating: widget.ebook.rate,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Color(0xFF3dd9d6),
                ),
                onRatingUpdate: (double value) {},
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              if (StaticFields.activeUser!.ebooks
                  .contains(widget.ebook.name)) {
                setState(() {
                  showMessage = "You have this ebook";
                });
              } else if (StaticFields.activeUser!.credit < widget.ebook.price) {
                setState(() {
                  showMessage = "Your credit is not enough";
                });
              } else {
                setState(() {
                  StaticFields.activeUser!.credit -= widget.ebook.price;
                  showMessage = "Ebook shoped successfully";
                  StaticFields.activeUser!.ebooks.add(widget.ebook.name);
                  addEbook();
                });
              }
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xFF3dd9d6),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Shop|\$" + widget.ebook.price.toString(),
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
          Text(
            showMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
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
                widget.ebook.description,
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

  void addEbook() async {
    await Socket.connect(StaticFields.ip, StaticFields.port)
        .then((serverSocket) {
      final data = "edit user&&" +
          userToJson(StaticFields.activeUser!) +
          StaticFields.postFix;
      serverSocket.write(data);
      serverSocket.flush();
    });
  }
}

class AudiobookDetails extends StatefulWidget {
  final Audiobook audiobook;

  AudiobookDetails({required this.audiobook});

  @override
  State<AudiobookDetails> createState() => _AudiobookDetailsState();
}

class _AudiobookDetailsState extends State<AudiobookDetails> {
  String showMessage = '';

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
                  image: AssetImage(widget.audiobook.imagePath),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              widget.audiobook.name,
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
              widget.audiobook.authorName,
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
                initialRating: widget.audiobook.rate,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Color(0xFF3dd9d6),
                ),
                onRatingUpdate: (double value) {},
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              if (StaticFields.activeUser!.audiobooks
                  .contains(widget.audiobook.name)) {
                setState(() {
                  showMessage = "You have this audiobook";
                });
              } else if (StaticFields.activeUser!.credit <
                  widget.audiobook.price) {
                setState(() {
                  showMessage = "Your credit is not enough";
                });
              } else {
                setState(() {
                  StaticFields.activeUser!.credit -= widget.audiobook.price;
                  showMessage = "Audiobook shoped successfully";
                  StaticFields.activeUser!.audiobooks
                      .add(widget.audiobook.name);
                  addAudiobook();
                });
              }
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xFF3dd9d6),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Shop|\$" + widget.audiobook.price.toString(),
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
          Text(
            showMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
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
                widget.audiobook.description,
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

  void addAudiobook() async {
    await Socket.connect(StaticFields.ip, StaticFields.port)
        .then((serverSocket) {
      final data = "edit user&&" +
          userToJson(StaticFields.activeUser!) +
          StaticFields.postFix;
      serverSocket.write(data);
      serverSocket.flush();
    });
  }
}
