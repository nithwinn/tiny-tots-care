import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/Parent_profile.dart';
import 'package:tiny_tots_care/Parent/child_profile.dart';
import 'package:tiny_tots_care/Parent/p.home.dart';
import 'package:tiny_tots_care/a/childprofile.dart';

class Activity1 extends StatefulWidget {
  const Activity1({Key? key}) : super(key: key);

  @override
  State<Activity1> createState() => _Activity1State();
}

class _Activity1State extends State<Activity1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Baby_profile.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 1,
            left: 0,
            right: 0,
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45.0),
                  bottomRight: Radius.circular(35.0),
                ),
                color: Color.fromARGB(255, 131, 147, 202),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 9),
                  child: Image.asset("assets/Activity.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 25,
            bottom: 200,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 248, 129, 204).withOpacity(0.5), // Shadow color
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Center(
                child: Text("Alphabet sensory bin"),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 230,
            bottom: 200,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 238, 231, 27).withOpacity(0.5), // Shadow color
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Center(
                child: Text("Craft making\nTime:1:00pm"),
              ),
            ),
          ),
          Positioned(
            top: 459,
            left: 75,
            bottom: 200,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 40, 33, 244).withOpacity(0.5), // Shadow color
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Center(
                child: Text("    Dancing\Time:12:00pm"),
              ),
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
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => ParentProfile()),
                        // );
                      },
                    ),
                    Text("Profile"),
        ],
      ),]
            ),)])
    );
  }
}
