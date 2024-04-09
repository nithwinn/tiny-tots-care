import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:tiny_tots_care/Admin/adminactivity.dart';
import '../DomainAmin.dart';

class Addactivity extends StatefulWidget {
  const Addactivity({Key? key});

  @override
  State<Addactivity> createState() => _AddactivityState();
}

class _AddactivityState extends State<Addactivity> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _activityController = TextEditingController();

 Future<void> _addActivityToFirebase() async {
  try {
    String activityId = FirebaseFirestore.instance.collection('activity').doc().id;

    await FirebaseFirestore.instance.collection('activity').doc(activityId).set({
      'activityId': activityId,
      'name': _nameController.text.trim(),
      'time': _timeController.text.trim(),
      'activity': _activityController.text.trim(),
    });

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Activity()),
    );
  } catch (error) {
    print('Error adding activity: $error');
    }
}


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
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 10), 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Time", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                controller: _timeController,
                decoration: InputDecoration(
                  hintText: "Time",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 10), 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Activity", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                controller: _activityController,
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
                width: double.infinity, 
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
                  onPressed: _addActivityToFirebase,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 300, left: 10),
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
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
