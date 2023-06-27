import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../oop classes/Models.dart';
import '../oop classes/static_fields.dart';
import 'Details.dart';
import 'LibraryPages/CollectionOfAudioBooks.dart';
import 'LibraryPages/CollectionOfEbooks.dart';
import 'LibraryPages/CollectionOfReaded.dart';
import 'LibraryPages/CollectionsOfDownloded.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF297171),
        title: Text(
          '      Library',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35,
            fontFamily: 'OoohBaby',
            fontWeight: FontWeight.bold,
            color: Color(0xFF3dd9d6),
          ),
        ),
      ),
      //backgroundColor: Color(0xFF232323),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            '   Audiobooks',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'OoohBaby',
              fontSize: 30,
              color: Color(0xFF3dd9d6),
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: StaticFields.activeUser!.audiobooks.length,
              itemBuilder: (context, index) {
                String audiobookName = StaticFields.activeUser!
                    .audiobooks[index]; // get the ebook at the current index
                late Audiobook audiobook;

                for (int i = 0; i < StaticFields.audiobooks.length; i++) {
                  if (audiobookName == StaticFields.audiobooks[i].name) {
                    audiobook = StaticFields.audiobooks[i];
                    break;
                  }
                }
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AudiobookDetails(
                            audiobook: audiobook,
                          ),
                        ),
                      );
                    },
                    child: Ink.image(
                      image: AssetImage(audiobook.imagePath),
                      // use the image path from the ebook
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            '   Ebooks',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'OoohBaby',
              fontSize: 30,
              color: Color(0xFF3dd9d6),
            ),
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: StaticFields.activeUser!.ebooks.length,
              itemBuilder: (context, index) {
                String ebookName = StaticFields.activeUser!
                    .ebooks[index]; // get the ebook at the current index
                late Ebook ebook;
                for (int i = 0; i < StaticFields.ebooks.length; i++) {
                  if (ebookName == StaticFields.ebooks[i].name) {
                    ebook = StaticFields.ebooks[i];
                    break;
                  }
                }
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
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

///
