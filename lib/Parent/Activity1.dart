// import 'package:flutter/material.dart';

// class Activity1 extends StatefulWidget {
//   const Activity1({super.key});

//   @override
//   State<Activity1> createState() => _Activity1State();
// }

// class _Activity1State extends State<Activity1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("assets/Baby_profile.png"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Container(
//               height: 180,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(85.0),
//                   bottomRight: Radius.circular(85.0),
//                 ),
//                 color: Color.fromARGB(255, 131, 147, 202),
//               ),
//               child: Center(
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 9),
//                   child: Image.asset("assets/Activity.png"),
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 570,
//             left: 0,
//             right: 0,
//             child: Container(
//               height: 100,
//               decoration: BoxDecoration(
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(255, 248, 129, 204).withOpacity(0.5), // Shadow color
//                     spreadRadius: 5, // Spread radius
//                     blurRadius: 4, // Blur radius
//                     offset: Offset(0, 3),
//                     // Offset in x and y directions
//                   ),
//                 ],
//                 shape: BoxShape.circle,
//                 color: Color.fromARGB(255, 242, 243, 247),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );

//   }
// }
