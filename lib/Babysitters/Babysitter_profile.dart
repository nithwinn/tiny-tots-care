import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Babysitters/babysitter_edit.dart';
import 'package:tiny_tots_care/Babysitters/teacher_home.dart';

class BabySitterProfile extends StatefulWidget {
  const BabySitterProfile({Key? key}) : super(key: key);

  @override
  State<BabySitterProfile> createState() => _BabySitterProfileState();
}

class _BabySitterProfileState extends State<BabySitterProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        leading: CircleAvatar(
  radius: 50,
  backgroundColor: Colors.transparent, 
  child: Padding(
    padding: const EdgeInsets.all(1.0), 
    child: ClipOval(
      child: Image.asset(
        'assets/b1.png',
        fit: BoxFit.fitHeight,
      ),
    ),
  ),
),

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dayana',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              'Female',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 35),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BabysitterEdit(),
                  ),
                );
              },
              child: Text(
                "Edit",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
              
                children: [
                  Text(
                    "Address:",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                SizedBox(height: 20,),
             
                  Text(
                    "Occupation:",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
               
              SizedBox(height: 20,),
                  Text(
                    "Phone Number:",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
              
             SizedBox(height: 20,),
                  Text(
                    "Whatsapp Number:",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
               
              SizedBox(height: 450),
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
                              builder: (context) => TeacherHome(),
                            ),
                          );
                        },
                      ),
                      Text("Home"),
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
