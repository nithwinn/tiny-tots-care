import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/update2.dart';

import '../DomainAmin.dart';

class Update extends StatefulWidget {
  const Update({Key? key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
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
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 35),
                child: Text("Date", style: TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75, top: 35),
                child: Text(
                  " 02/02/2024",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 35),
                child: IconButton(
                  icon: Icon(Icons.edit),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Update()),
                    );
                  },
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35, top: 35),
                child: Text("Time", style: TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75, top: 35),
                child: Text(
                  " 10:30am",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 35),
                child: IconButton(
                  icon: Icon(Icons.edit),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Update()),
                    );
                  },
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 35),
                child: Text("Activity", style: TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 35),
                child: Text(
                  " Singing",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 45, top: 35),
                child: IconButton(
                  icon: Icon(Icons.edit),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Update2()),
                    );
                  },
                ),
              )
            ],
          ),
          SizedBox(height: 45,),
          Container(
            height: 50,
            width: 120,
            decoration: BoxDecoration(border: Border.all()),
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.add_circle_outline_sharp),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Update2()),
                      );
                    },
                  ),
                  Text(
                    "UPDATE",
                    style: TextStyle(
                      backgroundColor: Colors.white10,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 305,),
          IconButton(
            icon: Icon(Icons.home),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Home()),
              );
            },
          ),
          Text("Home"),
        ],
      ),
    );
  }
}
