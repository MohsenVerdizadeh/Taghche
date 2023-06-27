import 'package:flutter/material.dart';
import 'package:project/Home%20pages/Details.dart';
import 'package:project/oop%20classes/static_fields.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  bool _isEbook = true;
  String _searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              _isEbook
                  ? Icons.spatial_audio_outlined
                  : Icons.menu_book_outlined,
              color: Color(0xFF3dd9d6),
            ),
            onPressed: () {
              setState(() {
                _isEbook = !_isEbook;
              });
            },
          )
        ],
        backgroundColor: Color(0xFF297171),
        title: Center(
          child: Text(
            'Shop',
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'OoohBaby',
              fontWeight: FontWeight.bold,
              color: Color(0xFF3dd9d6),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for Ebooks or Audiobooks',
                suffixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _isEbook
                  ? StaticFields.ebooks.length
                  : StaticFields.audiobooks.length,
              itemBuilder: (BuildContext context, int index) {
                final ebook = StaticFields.ebooks[index];
                final audiobook = StaticFields.audiobooks[index];
                if (_isEbook) {
                  if (_searchText.isNotEmpty &&
                      !ebook.name
                          .toLowerCase()
                          .contains(_searchText.toLowerCase())) {
                    // Filter out items that do not match the search text
                    return SizedBox.shrink();
                  }
                  return Padding(
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
                                  image: AssetImage(ebook.imagePath),
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
                                  ebook.name,
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
                                  ebook.authorName,
                                  style: TextStyle(
                                    color: Color(0xFF232323),
                                    fontSize: 20,
                                    fontFamily: 'OoohBaby',
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EbookDetails(ebook: ebook)),
                                    );
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
                  );
                } else {
                  if (_searchText.isNotEmpty &&
                      !audiobook.name
                          .toLowerCase()
                          .contains(_searchText.toLowerCase())) {
                    // Filter out items that do not match the search text
                    return SizedBox.shrink();
                  }
                  return Padding(
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
                                  image: AssetImage(audiobook.imagePath),
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
                                  audiobook.name,
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
                                  audiobook.authorName,
                                  style: TextStyle(
                                    color: Color(0xFF232323),
                                    fontSize: 20,
                                    fontFamily: 'OoohBaby',
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AudiobookDetails(audiobook: audiobook)),
                                    );
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
                  );
                  /*Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Card(
                        child: SingleChildScrollView(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Ink.image(
                                image: AssetImage(audiobook.imagePath),
                                // use the image path from the ebook
                                height: 130,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      audiobook.name,
                                      style: TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '\$${audiobook.price.toStringAsFixed(2)}',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.all(8.0),
                              //   child: Text(
                              //     ebook.description,
                              //     style: TextStyle(fontSize: 16),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );*/
                }
              },
            ),
          ),
          // Expanded(
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: StaticFields.ebooks.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       final audiobook = StaticFields.audiobooks[index];
          //       if (_searchText.isNotEmpty &&
          //           !audiobook.name
          //               .toLowerCase()
          //               .contains(_searchText.toLowerCase())) {
          //         // Filter out items that do not match the search text
          //         return SizedBox.shrink();
          //       }
          //       return Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Card(
          //           child: SingleChildScrollView(
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Ink.image(
          //                   image: AssetImage(audiobook.imagePath),
          //                   // use the image path from the ebook
          //                   height: 249.6,
          //                   width: 150,
          //                   fit: BoxFit.cover,
          //                 ),
          //                 // Padding(
          //                 //   padding: const EdgeInsets.all(8.0),
          //                 //   child: Text(
          //                 //     audiobook.name,
          //                 //     style: TextStyle(
          //                 //         fontSize: 18, fontWeight: FontWeight.bold),
          //                 //   ),
          //                 // ),
          //                 // Padding(
          //                 //   padding: const EdgeInsets.all(8.0),
          //                 //   child: Text(
          //                 //     audiobook.description,
          //                 //     style: TextStyle(fontSize: 16),
          //                 //   ),
          //                 // ),
          //                 // Padding(
          //                 //   padding: const EdgeInsets.all(8.0),
          //                 //   child: Text(
          //                 //     '\$${audiobook.price.toStringAsFixed(2)}',
          //                 //     style: TextStyle(
          //                 //         fontSize: 16, fontWeight: FontWeight.bold),
          //                 //   ),
          //                 // ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
