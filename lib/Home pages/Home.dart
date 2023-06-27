import 'dart:io';

import 'package:flutter/material.dart';

import '../oop classes/Models.dart';
import '../oop classes/static_fields.dart';
import 'Details.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // late List<Ebook> ebooks;
  // late List<Audiobook> audiobooks;

  // void getEbooks() async {
  //   Socket serverSocket =
  //       await Socket.connect(StaticFields.ip, StaticFields.port);
  //   final data = "get all ebooks&&" + StaticFields.postFix;
  //   serverSocket.write(data);
  //   serverSocket.flush();
  //   serverSocket.listen((res) {
  //     setState(() {
  //       final response = String.fromCharCodes(res);
  //       print(response);
  //       StaticFields.ebooks = ebookFromJson(response);
  //     });
  //   });
  // }
  //
  // void getAudiobooks() async {
  //   Socket serverSocket =
  //       await Socket.connect(StaticFields.ip, StaticFields.port);
  //   final data = "get all audiobooks&&" + StaticFields.postFix;
  //   serverSocket.write(data);
  //   serverSocket.flush();
  //   serverSocket.listen((res) {
  //     setState(() {
  //       final response = String.fromCharCodes(res);
  //       print(response);
  //       StaticFields.audiobooks = audiobookFromJson(response);
  //     });
  //   });
  // }

  // @override
  // void initState() async {
  //   super.initState();
  //   getEbooks();
  //   getAudiobooks();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        //backgroundColor: const Color(0xFF232323),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF297171),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/1.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "how to java programm",
                            style: TextStyle(
                              color: Color(0xFF232323),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OoohBaby',
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "ditel ditel",
                            style: TextStyle(
                              color: Color(0xFF232323),
                              fontSize: 20,
                              fontFamily: 'OoohBaby',
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // if (StaticFields.activeUser!.ebooks.last !=
                              //     null) {
                              //   Navigator.of(context).push(
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const AudiobookDetails()),
                              //   );
                              // }
                            },
                            child: Text(
                              'details',
                              style: TextStyle(
                                color: Color(0xFF3dd9d6),
                                fontSize: 20,
                                fontFamily: 'OoohBaby',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: TabBar(
                tabs: [
                  Tab(
                    text: 'Ebooks',
                    icon: Icon(
                      Icons.menu_book_outlined,
                      color: Color(0xFF3dd9d6),
                    ),
                  ),
                  Tab(
                    text: 'Audiobooks',
                    icon: Icon(
                      Icons.spatial_audio_outlined,
                      color: Color(0xFF3dd9d6),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '     Favorite',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OoohBaby',
                          fontSize: 20,
                          color: Color(0xFF3dd9d6),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: StaticFields.ebooks.length,
                          itemBuilder: (context, index) {
                            Ebook ebook = StaticFields.ebooks[
                                index]; // get the ebook at the current index
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => EbookDetails(
                                        ebook: ebook,
                                      ),
                                    ),
                                  );
                                },
                                child: Ink.image(
                                  image: AssetImage(ebook.imagePath),
                                  // use the image path from the ebook
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        '     New release',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OoohBaby',
                          fontSize: 20,
                          color: Color(0xFF3dd9d6),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: StaticFields.ebooks.length,
                          itemBuilder: (context, index) {
                            Ebook ebook = StaticFields.ebooks[
                                index]; // get the ebook at the current index
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => EbookDetails(
                                        ebook: ebook,
                                      ),
                                    ),
                                  );
                                },
                                child: Ink.image(
                                  image: AssetImage(ebook.imagePath),
                                  // use the image path from the ebook
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        '     Top selling',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OoohBaby',
                          fontSize: 20,
                          color: Color(0xFF3dd9d6),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: StaticFields.ebooks.length,
                          itemBuilder: (context, index) {
                            Ebook ebook = StaticFields.ebooks[index];
                            if (ebook.topSelling == true) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => EbookDetails(
                                          ebook: ebook,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Ink.image(
                                    image: AssetImage(ebook.imagePath),
                                    // use the image path from the ebook
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '     Favorite',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OoohBaby',
                          fontSize: 20,
                          color: Color(0xFF3dd9d6),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: StaticFields.ebooks.length,
                          itemBuilder: (context, index) {
                            Audiobook audiobook = StaticFields.audiobooks[
                                index]; // get the ebook at the current index
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                           AudiobookDetails(audiobook: audiobook,),
                                    ),
                                  );
                                },
                                child: Ink.image(
                                  image: AssetImage(audiobook.imagePath),
                                  // use the image path from the ebook
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        '     New release',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OoohBaby',
                          fontSize: 20,
                          color: Color(0xFF3dd9d6),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: StaticFields.ebooks.length,
                          itemBuilder: (context, index) {
                            Audiobook audiobook = StaticFields.audiobooks[
                                index]; // get the ebook at the current index
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                           AudiobookDetails(audiobook: audiobook,),
                                    ),
                                  );
                                },
                                child: Ink.image(
                                  image: AssetImage(audiobook.imagePath),
                                  // use the image path from the ebook
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        '     Top selling',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OoohBaby',
                          fontSize: 20,
                          color: Color(0xFF3dd9d6),
                        ),
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: StaticFields.ebooks.length,
                          itemBuilder: (context, index) {
                            Audiobook audiobook = StaticFields.audiobooks[
                                index]; // get the ebook at the current index
                            if (audiobook.topSelling == true) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                             AudiobookDetails(audiobook: audiobook,),
                                      ),
                                    );
                                  },
                                  child: Ink.image(
                                    image: AssetImage(audiobook.imagePath),
                                    // use the image path from the ebook
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
