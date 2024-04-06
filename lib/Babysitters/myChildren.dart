import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Babysitters/daliyTask.dart';
import 'package:tiny_tots_care/Babysitters/studenttask.dart';
import 'package:tiny_tots_care/Parent/dailyTask.dart';

class MyChildren extends StatefulWidget {

  @override
  State<MyChildren> createState() => _MyChildrenState();
}

class _MyChildrenState extends State<MyChildren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70, 
        title: Text(
          'My Children',
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 150,
              width: 350,
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
                color: Color(0xE2EFFD8C),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MystudentTask()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  textStyle: TextStyle(color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/child.png'),
                    ),

                    SizedBox(width: 30),
                    Center(
                      child: Text(
                        "Jeni\n  Female",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 150,
              width: 350,
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
                color: Color(0xFFF0BE3E),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyChildren()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  textStyle: TextStyle(color: Colors.white),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/child1.png'),
                    ),

                    SizedBox(width: 30),
                    Center(
                      child: Text(
                        "Alan\n  Male",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
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
    );
  }
}
