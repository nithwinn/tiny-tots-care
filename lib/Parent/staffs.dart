import 'package:flutter/material.dart';

import 'p.home.dart';

class Staffs extends StatefulWidget {
  const Staffs({Key? key}) : super(key: key);

  @override
  State<Staffs> createState() => _StaffsState();
}

class _StaffsState extends State<Staffs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), // Set the height of the AppBar
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFEE364A), Color(0xFFFFFFFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          leading: Image.asset(
            'assets/staff.png',
            height: 560,
            width: 560,
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text(
              'STAFFS',
              style: TextStyle(
                color: Color(0xFFE93A4C),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "assets/staff1.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 55),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name: Dyana C", style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text("Phone: 8025654723", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  SizedBox(width: 65),
                  IconButton(
                    icon: Icon(Icons.call),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "assets/staff2.png",
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 55),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name: Kiran v", style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text("Phone: 9025654745", style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  SizedBox(width: 65),
                  IconButton(
                    icon: Icon(Icons.call),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 805, left: 25.0),
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
                      MaterialPageRoute(builder: (context) => Phome()),
                    );
                  },
                ),
                Text("Home"),
              ],
            ),
            SizedBox(width: 55.0),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.add_circle),
                  color: Colors.black,
                  onPressed: () {},
                ),
                Text("Activity"),
              ],
            ),
            SizedBox(width: 55.0),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.child_care),
                  color: Colors.black,
                  onPressed: () {},
                ),
                Text("My child"),
              ],
            ),
            SizedBox(width: 55.0),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.person),
                  color: Colors.black,
                  onPressed: () {},
                ),
                Text("Profile"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
