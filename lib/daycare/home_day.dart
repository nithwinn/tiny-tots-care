import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/adminactivity.dart';
import 'package:tiny_tots_care/Admin/category.dart';
import 'package:tiny_tots_care/daycare/childrean.dart';
import 'package:tiny_tots_care/daycare/myStaff.dart';
import 'package:tiny_tots_care/daycare/parentRequest.dart';

class MySchool extends StatefulWidget {
  const MySchool({super.key});

  @override
  State<MySchool> createState() => _MySchoolState();
}

class _MySchoolState extends State<MySchool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Container(
            height: 180,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFF750A64),
                 borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(55.0),
                              bottomLeft: Radius.circular(55.0),
                            ),
                ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 35,
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20, right: 20),
                child: Row(
                  children: [
                    Text(
                      "My School",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(width: 150),
                    ElevatedButton(
                        
                        onPressed: () {
                           Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Category()),
              );
                        },
                        child: Text("Logout"))
                  ],
                ),
              ),
            ),
          ),
        ),
        
        SizedBox(
          height: 90,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyStaFF()),
              );
            });
          },
          child:Container(
  decoration: BoxDecoration(
    color: Color.fromARGB(255, 239, 198, 198),
    borderRadius: BorderRadius.circular(5),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  ),
  height: 70,
  width: 350,
  child: Center(
    child: Text(
      "MY STAFFS",
      style: TextStyle(
        color: const Color.fromARGB(255, 0, 0, 0),
        fontStyle: FontStyle.normal,
        fontSize: 30,
      ),
    ),
  ),
)

        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ParentRequest()),
              );
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 192, 234, 186),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                ),
            height: 70,
            width: 350,
            child: Center(
                child: Text(
              "PARENT REQUEST",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontStyle: FontStyle.normal,
                fontSize: 30,
              ),
            )),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Children()),
              );
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 199, 193, 237),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                ),
            height: 70,
            width: 350,
            child: Center(
                child: Text(
              "CHILDREN",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontStyle: FontStyle.normal,
                fontSize: 30,
              ),
            )),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Activity()),
              );
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFF2D785),
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
                ),
            height: 70,
            width: 350,
            child: Center(
                child: Text(
              "ACTIVITY",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontStyle: FontStyle.normal,
                fontSize: 30,
              ),
            )),
          ),
        ),
      ],
    ));
  }
}