import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/oop%20classes/static_fields.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

// List<Ebook> ebookFromJson(String str) =>
//     List<Ebook>.from(json.decode(str).map((x) => Ebook.fromJson(x)));
//
// List<Audiobook> audiobookFromJson(String str) =>
//     List<Audiobook>.from(json.decode(str).map((x) => Ebook.fromJson(x)));

class User {
  final String username;
  final String email;
  final String password;
  int credit;
  final List<String> ebooks;
  final List<String> audiobooks;

  User({
    required this.username,
    required this.email,
    required this.password,
    required this.credit,
    required this.ebooks,
    required this.audiobooks,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      email: json['email'],
      password: json['password'],
      credit: json['credit'],
      ebooks: List<String>.from(json["ebooks"]),
      audiobooks: List<String>.from(json["audiobooks"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'email': email,
      'password': password,
      'credit': credit,
      'ebooks': ebooks,
      'audiobooks': audiobooks,
    };
  }
}

class Ebook {
  final String name;
  final String authorName;
  final int price;
  final String description;
  final String imagePath;
  final String path;
  final bool topSelling;
  final double rate;

  Ebook({
    required this.name,
    required this.authorName,
    required this.price,
    required this.description,
    required this.imagePath,
    required this.path,
    required this.topSelling,
    required this.rate,
  });

// factory Ebook.fromJson(Map<String, dynamic> json) {
//   return Ebook(
//     name: json['name'],
//     authorName: json['authorName'],
//     price: json['price'],
//     description: json['description'],
//     imagePath: json['imagePath'],
//     topSelling: json['topSelling'],
//   );
// }
//
// Map<String, dynamic> toJson() {
//   return {
//     'name': name,
//     'authorName': authorName,
//     'price': price,
//     'description': description,
//     'imagePath': imagePath,
//     'topSelling': topSelling,
//   };
// }
}

class Audiobook {
  final String name;
  final String authorName;
  final int price;
  final String description;
  final String imagePath;
  final String path;
  final bool topSelling;
  final double rate;

  Audiobook({
    required this.name,
    required this.authorName,
    required this.price,
    required this.description,
    required this.imagePath,
    required this.path,
    required this.topSelling,
    required this.rate,
  });

// factory Audiobook.fromJson(Map<String, dynamic> json) {
//   return Audiobook(
//     name: json['name'],
//     authorName: json['authorName'],
//     price: json['price'],
//     description: json['description'],
//     imagePath: json['imagePath'],
//     topSelling: json['topSelling'],
//   );
// }
//
// Map<String, dynamic> toJson() {
//   return {
//     'name': name,
//     'authorName': authorName,
//     'price': price,
//     'description': description,
//     'imagePath': imagePath,
//     'topSelling': topSelling,
//   };
// }
}
// void main() => runApp(app());
//
// class app extends StatefulWidget {
//   const app({Key? key}) : super(key: key);
//
//   @override
//   State<app> createState() => _appState();
// }
//
// class _appState extends State<app> {
//   late List<Ebook> ebooks;
//   late List<Audiobook> audiobooks;
//
//   void getEbooks() async {
//     await Socket.connect(StaticFields.ip, StaticFields.port)
//         .then((serverSocket) {
//       final data = "sign in&&" + "get all ebooks" + StaticFields.postFix;
//       serverSocket.write(data);
//       print('read ebooks');
//       serverSocket.flush();
//       serverSocket.listen((res) {
//         setState(() {
//           ebooks = ebookFromJson(String.fromCharCodes(res));
//         });
//       });
//     });
//   }
//
//   void getAudiobooks() async {
//     await Socket.connect(StaticFields.ip, StaticFields.port)
//         .then((serverSocket) {
//       final data = "sign in&&" + "get all audiobooks" + StaticFields.postFix;
//       serverSocket.write(data);
//       serverSocket.flush();
//       serverSocket.listen((res) {
//         setState(() {
//           audiobooks = audiobookFromJson(String.fromCharCodes(res));
//         });
//       });
//     });
//   }
//
//   @override
//   void initState() {
//     sleep(Duration(milliseconds: 5000));
//     super.initState();
//     getEbooks();
//     getAudiobooks();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           child: Text(ebooks.length.toString()),
//         ),
//       ),
//     );
//   }
// }
