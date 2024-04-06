// import 'package:flutter/material.dart';


// class BabyProfile extends StatefulWidget {

//   @override
//   State<BabyProfile> createState() => _BabyProfileState();
// }

// class _BabyProfileState extends State<BabyProfile> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         // children:[Container
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/Baby_profile.png"),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//           Padding(
//             padding: const EdgeInsets.only(top: 80.0),
//             child: Center(
//               child: Column(
//                 children: [
//                   Image.asset(
//                     "assets/rainbow.png",
//                     width: 330,
//                     height: 142,
//                   ),
//                   Text(
//                     "My Child",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//                   ),
//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 12, vertical: 17),
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 1,
//                           blurRadius: 1,
//                           offset: Offset(0, 3),
//                         ),
//                       ],
//                       color: Colors.white,
//                     ),
//                     child: Row(
//                       children: [
//                         Column(
//                           children: [
//                             Image.asset(
//                               "assets/child.png",
//                               height: 100,
//                               width: 150,
//                             ),
//                           ],
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Jeni (female)",
//                               style: TextStyle(
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             Text(
//                               "Blood Group A+\n06/12/2021",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.black,
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 35),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 35),
//                     child: Row(
//                       children: [
//                         Container(
//                           height: 50,
//                           width: 150,
//                           decoration: BoxDecoration(
//                             color: Color(0xFFEF60D8),
//                             borderRadius: BorderRadius.circular(35),
//                           ),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               // // Navigate to Food screen
//                               // Navigator.push(
//                               //   context,
//                               //   MaterialPageRoute(builder: (context) => BabyHealth()),
//                               // );
//                             },
//                             child: Center(
//                               child: Text(
//                                 "Health Records",
//                                 style: TextStyle(
//                                   fontSize: 25,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.transparent,
//                               elevation: 0,
//                               padding: EdgeInsets.zero,
//                               textStyle: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                         SizedBox(width: 25,),
//                         Container(
//                           height: 50,
//                           width: 150,
//                           decoration: BoxDecoration(
//                             color: Color(0xFF000000),
//                             borderRadius: BorderRadius.circular(35),
//                           ),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               // // Navigate to Food screen
//                               // Navigator.push(
//                               //   context,
//                               //   MaterialPageRoute(builder: (context) => Staffs()),
//                               // );
//                             },
//                             child: Center(
//                               child: Text(
//                                 "Daily Task",
//                                 style: TextStyle(
//                                   fontSize: 25,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.transparent,
//                               elevation: 0,
//                               padding: EdgeInsets.zero,
//                               textStyle: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 800, left: 20.0),
//             child: Row(
//               children: [
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.home),
//                       color: Colors.black,
//                       onPressed: () {
//     //                     Navigator.push(
//     //                       context,
//     //                       MaterialPageRoute(
//     //                           builder: (context) => Phome()),
//     //                     );
//     // );
//                       },
//                     ),
//                     Text("Home"),
//                   ],
//                 ),
//                 SizedBox(width: 50.0), // Add spacing between IconButton and Text
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.add_circle),
//                       color: Colors.black,
//                       onPressed: () {},
//                     ),
//                     Text("Activity"),
//                   ],
//                 ),
//                 SizedBox(width: 50.0), // Add spacing between IconButton and Text
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.child_care),
//                       color: Colors.black,
//                       onPressed: () {
//                         // Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //       builder: (context) => BabyProfile()),
//                         // );
//                       },
//                     ),
//                     Text("My child"),
//                   ],
//                 ),
//                 SizedBox(width: 50.0), // Add spacing between IconButton and Text
//                 Column(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.person),
//                       color: Colors.black,
//                       onPressed: () {
//                         // Navigator.push(
//                         //   context,
//                         //   MaterialPageRoute(
//                         //       builder: (context) => ParentProfile()),
//                         // );
//                       },
//                     ),
//                     Text("Profile"),
//                   ],
//                 ),
//               ],
//             ),
//           ),]
//       ),
//     );
//   }
// }
