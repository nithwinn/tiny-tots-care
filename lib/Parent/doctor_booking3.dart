import 'package:flutter/material.dart';

import 'Parent_profile.dart';
import 'p.home.dart';

class DoctorBooking3 extends StatefulWidget {
  const DoctorBooking3({Key? key});

  @override
  State<DoctorBooking3> createState() => _DoctorBooking3State();
}

class _DoctorBooking3State extends State<DoctorBooking3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), // Set the height of the AppBar
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "All done",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Booking Successful",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF93B5D2),
                    fontSize: 35,
                  ),
                ),
                Icon(
                  Icons.check_circle_outlined,
                  color: Color(0xFF93B5D2),
                  size: 35,
                )
              ],
            ),
            SizedBox(height: 65),
            Center(
              child: Container(
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  color: Color(0xFF95B6D2), // Adding color to the container
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Sarah',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'October/18/2023',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '11:30am-3:30pm',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(
                        thickness: 0.5,
                        color: Colors.black,
                        height: 0.5,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Parvathy",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '3 year old',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 325, left: 10.0),
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
                  SizedBox(width: 50),
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
                  SizedBox(width: 50),
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
                  SizedBox(width: 50),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.person),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ParentProfile()),
                          );
                        },
                      ),
                      Text("Profile"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
