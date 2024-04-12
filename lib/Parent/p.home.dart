import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/enroll_profile.dart';
import 'package:tiny_tots_care/Parent/loginp.dart';

import 'package:tiny_tots_care/Parent/activity.dart';
import 'package:tiny_tots_care/Parent/child_profile.dart';
import 'package:tiny_tots_care/Parent/doctor.dart';
import 'package:tiny_tots_care/Parent/staffs.dart';
import 'package:tiny_tots_care/a/childprofile.dart';

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
                      onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Loginp()),
                        );
                      },
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
                child: GestureDetector(
                            onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Food()),
                                  );
                            },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 130,
                      width: 370,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color(0xFFFEE77F),
                          Color(0xFFFFFFFF),
                        ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/food1.png",
                            width: 160,
                            height: 100,
                          ),
                          Text(
                              "FOOD",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFD38640),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                          onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Staffs()),
                                );
                          },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 130,
                    width: 370,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFFE93A4C),
                        Color(0xFFFFFFFF),
                      ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/staff.png",
                          width: 160,
                          height: 100,
                        ),
                        Text(
                            "STAFF",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFE93A4C),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                          onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Doctor()),
                                );
                          },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 130,
                    width: 370,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xFF77A4CC),
                        Color(0xFFFFFFFF),
                      ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,),
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/doctor.png",
                          width: 160,
                          height: 100,
                        ),
                        Text(
                            "DOCTOR",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF87ACCF),
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
                SizedBox(width: 50.0), 
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Activity1()),
                        );
                      },
                    ),
                    Text("Activity"),
                  ],
                ),
                SizedBox(width: 50.0), 
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
                SizedBox(width: 50.0), 
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
        ]
    )
    );
  }
}
