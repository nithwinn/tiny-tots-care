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
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 90),
          child: Center(
            child: Container(
              child: Image.asset(
                  'assets/“The soul is healed by being with children”.png'),
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
          child: Container(
            decoration: BoxDecoration(
                color: Color(0xFFF1D2D2),
                borderRadius: BorderRadius.circular(10)),
            height: 60,
            width: 350,
            child: Center(
                child: Text(
              "My Staff",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 30,
              ),
            )),
          ),
        ),
        SizedBox(
          height: 20,
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
                color: Color(0xFFCDF2C7),
                borderRadius: BorderRadius.circular(10)),
            height: 60,
            width: 350,
            child: Center(
                child: Text(
              "Parents Request",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 30,
              ),
            )),
          ),
        ),
        SizedBox(
          height: 20,
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
                color: Color(0xFFCFC9F4),
                borderRadius: BorderRadius.circular(10)),
            height: 60,
            width: 350,
            child: Center(
                child: Text(
              "Children",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 30,
              ),
            )),
          ),
        ),
        SizedBox(
          height: 20,
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
                borderRadius: BorderRadius.circular(10)),
            height: 60,
            width: 350,
            child: Center(
                child: Text(
              "Activity",
              style: TextStyle(
                color: Colors.white,
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