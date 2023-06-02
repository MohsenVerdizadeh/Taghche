import 'package:flutter/material.dart';

class Bookdetails extends StatelessWidget {
  final String title;
  final String author;
  final String details;
  final String imageUrl;

  const Bookdetails(
      {Key? key,
      required this.title,
      required this.author,
      required this.details,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
