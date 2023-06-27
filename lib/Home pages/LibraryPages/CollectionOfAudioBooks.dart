// import 'package:flutter/material.dart';
//
// import '../Details.dart';
//
// class CollectionOfAudioBooks extends StatelessWidget {
//   const CollectionOfAudioBooks({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      // backgroundColor: Color(0xFF232323),
//       appBar: AppBar(
//         backgroundColor: Color(0xFF297171),
//         title: Center(
//           child: Text(
//             'My audiobooks        ',
//             style: TextStyle(
//               fontSize: 25,
//               fontFamily: 'OoohBaby',
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF3dd9d6),
//             ),
//           ),
//         ),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 130,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: Color(0xFF297171),
//               ),
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(5),
//                     child: Container(
//                       width: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         image: DecorationImage(
//                             fit: BoxFit.fill,
//                             image: AssetImage("assets/images/1.png")),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(5),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'How to program java',
//                           style: TextStyle(
//                             color: Color(0xFF232323),
//                             fontSize: 23,
//                             fontWeight: FontWeight.bold,
//                             fontFamily: 'OoohBaby',
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           'ditel and ditel',
//                           style: TextStyle(
//                             color: Color(0xFF232323),
//                             fontSize: 20,
//                             fontFamily: 'OoohBaby',
//                           ),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                   builder: (context) => const AudiobookDetails()),
//                             );
//                           },
//                           child: Text(
//                             'details',
//                             style: TextStyle(
//                               color: Color(0xFF3dd9d6),
//                               fontSize: 20,
//                               fontFamily: 'OoohBaby',
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//         itemCount: 5,
//       ),
//     );
//   }
// }
