import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/doctor.dart';
import 'package:tiny_tots_care/Parent/staffs.dart';

import 'food.dart';

class Phome extends StatefulWidget {
  const Phome({Key? key});

  @override
  State<Phome> createState() => _PhomeState();
}

class _PhomeState extends State<Phome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 700),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/blurlogo.png"),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(right: 15, top: 40),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: IconButton(
                      icon: Icon(Icons.logout),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/phome.png",
                    width: 330,
                    height: 142,
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 300,
                ),
                child: Container(
                  child: Card(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xFFFEE77F),
                              Color(0xFFFFFFFF),
                            ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                            ),
                          ),
                          child: Image.asset(
                            "assets/food1.png",
                            width: 160,
                            height: 100,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            width: 390,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFFEE77F),
                                  Color(0xFFFFFFFF),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigate to Food screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Food()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 120),
                                child: Text(
                                  "FOOD",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFD38640),
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Container(
                  child: Card(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xFFE93A4C),
                              Color(0xFFFFFFFF),
                            ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                            ),
                          ),
                          child: Image.asset(
                            "assets/staff.png",
                            width: 160,
                            height: 100,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            width: 390,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFEE364A),
                                  Color(0xFFFFFFFF),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigate to Food screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Staffs()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 120),
                                child: Text(
                                  "STAFFS",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFE93A4C),
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Container(
                  child: Card(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xFF77A4CC),
                              Color(0xFFFFFFFF),
                            ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                            ),
                          ),
                          child: Image.asset(
                            "assets/doctor.png",
                            width: 160,
                            height: 100,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            width: 390,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF77A4CC),
                                  Color(0xFFFFFFFF),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigate to Food screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Doctor()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 120),
                                child: Text(
                                  "DOCTOR",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF87ACCF),
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                      onPressed: () {},
                    ),
                    Text("Profile"),
                  ],
                ),
              ],
            ),
          ),
        ]
    )
    );
  }
}
