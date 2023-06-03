import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/Home%20pages/LibraryPages/CollectionOfEbooks.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFF232323),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TabBar(
              tabs: [
                Tab(
                  text: 'Your books',
                ),
                Tab(
                  text: 'Shelves',
                ),
                Tab(
                  text: 'Series',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ListView(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF297171),
                          ),
                          child: Center(
                            child: ListTile(
                              title: Text(
                                'Ebooks',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'OoohBaby',
                                  color: Color(0xFF3dd9d6),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF3dd9d6),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const CollectionOfEbooks()),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF297171),
                          ),
                          child: Center(
                            child: ListTile(
                              title: Text(
                                'Audiobooks',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'OoohBaby',
                                  color: Color(0xFF3dd9d6),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF3dd9d6),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const CollectionOfAudioBooks()),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF297171),
                          ),
                          child: Center(
                            child: ListTile(
                              title: Text(
                                'Downloaded',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'OoohBaby',
                                  color: Color(0xFF3dd9d6),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF3dd9d6),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const CollectionOfEbooks()),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xFF297171),
                          ),
                          child: Center(
                            child: ListTile(
                              title: Text(
                                'Readed',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'OoohBaby',
                                  color: Color(0xFF3dd9d6),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF3dd9d6),
                              ),
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const CollectionOfEbooks()),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
