import 'package:flutter/material.dart';

import 'Parent_profile.dart';
import 'child_profile.dart';
import 'p.home.dart';

class BabyHealth extends StatefulWidget {

  @override
  State<BabyHealth> createState() => _BabyHealthState();
}

class _BabyHealthState extends State<BabyHealth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 550, left: 50),
            child: Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/childpage.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500, left: 150),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Star 1.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500, right: 50),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Star 2.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(65.0),
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0.5,
                    blurRadius: 0.5,
                    offset: Offset(0, 1),
                  ),
                ],
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Health Records",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            child: Row(
              children: [
                Text(
                  "Height:",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 55),
                Text(
                  "        90cm",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Positioned(
            top: 200,
            left: 20,
            child: Row(
              children: [
                Text(
                  "weight:",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 55),
                Text(
                  "        14.29kg",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Positioned(
            top: 250,
            left: 20,
            child: Row(
              children: [
                Text(
                  "Growth Rate:",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 55),
                Text(
                  "Normal",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Positioned(
            top: 300,
            left: 20,
            child: Row(
              children: [
                Text(
                  "Temparature:",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 55),
                Text(
                  "Normal",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 800, left: 20.0),
            child: Row(
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Phome()),
                        );
                      },
                    ),
                    Text("Home"),
                  ],
                ),
                SizedBox(width: 50.0), // Add spacing between IconButton and Text
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    Text("Activity"),
                  ],
                ),
                SizedBox(width: 50.0), // Add spacing between IconButton and Text
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.child_care),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BabyProfile()),
                        );
                      },
                    ),
                    Text("My child"),
                  ],
                ),
                SizedBox(width: 50.0), // Add spacing between IconButton and Text
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.person),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ParentProfile()),
                        );
                      },
                    ),
                    Text("Profile"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
