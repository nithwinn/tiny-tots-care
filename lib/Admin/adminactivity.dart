import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/a&u.dart';
import 'package:tiny_tots_care/Admin/addactivity.dart';

import '../DomainAmin.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF61EDDC), Color(0xFFFFFFFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 75,top: 20),
            child: Text(
              'Activity',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Column( // Wrap the Padding widgets in a Column
        children: [
          Center(
            child: Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(border: Border.all()),
              child: TextButton(
                child: Text(
                  "ADD",
                  style: TextStyle(
                    backgroundColor: Colors.white10,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Addactivity()),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 15,),
          Center(
            child: Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(border: Border.all()),
              child: TextButton(
                child: Text(
                  "Update&Edit",
                  style: TextStyle(
                    backgroundColor: Colors.white10,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddandUpdate()),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 530,left: 10),
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home()
                      ),
                    );
                  },
                ),
                Text("Home"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
