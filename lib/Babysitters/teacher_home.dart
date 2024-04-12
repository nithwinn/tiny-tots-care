import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Babysitters/Babysitter_profile.dart';
import 'package:tiny_tots_care/Babysitters/myChildren.dart';
import 'package:tiny_tots_care/Parent/foodmenu.dart';
import 'package:tiny_tots_care/a/students.dart';

class TeacherHome extends StatefulWidget {

  @override
  State<TeacherHome> createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/babysitterhome.png",
                width: 600,
                height: 400,
                fit: BoxFit.fitWidth ,
              ),
              SizedBox(height: 55,),
              Padding(
                padding: const EdgeInsets.only(left: 35),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.lightBlueAccent
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Foodmenu()),
                          );
                        },
                        child: Center(
                          child: Text(
                            "Menu",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          textStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 25,),
                    Container(
                      height: 80,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 4,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Color(0xFFD38640),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => StudentScreen()),
                          );
                        },
                        child: Center(
                          child: Text(
                            "Activity",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.zero,
                          textStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                  color: Color(0xFFBE40D3),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyChildren()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "My Children",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 120,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                builder: (context) => TeacherHome()),
                          );
                        },
                      ),
                      Text("Home"),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.person),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BabySitterProfile()),
                          );
                        },
                      ),
                      Text("Profile"),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
