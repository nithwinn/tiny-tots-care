import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/addview.dart';

import '../DomainAmin.dart';

class Addactivity extends StatefulWidget {
  const Addactivity({Key? key});

  @override
  State<Addactivity> createState() => _AddactivityState();
}

class _AddactivityState extends State<Addactivity> {
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
                begin: Alignment.topRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          title: Text(
            'Add Activity',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Name", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 10), // Added SizedBox for spacing
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Time", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Time",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 10), // Added SizedBox for spacing
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Activity", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Activity",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 35),
              Container(
                height: 50,
                width: double.infinity, // Adjusted width
                decoration: BoxDecoration(border: Border.all()),
                child: TextButton(
                  child: Text(
                    "ADD",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white10,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Addview()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300,left: 10),
                child: Column(
                  children: [
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
