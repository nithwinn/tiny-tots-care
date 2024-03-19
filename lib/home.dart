import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/login.dart';
import 'package:tiny_tots_care/Parent/parent_registration.dart';

import 'Babysitters/babysitters_registration.dart';
import 'Doctors/doctor_registration.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: 50,
                width: 80,
                color: const Color(0xFFACE3EF),
                child: Center(
                  child: Text(
                    "select category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),
            buildCategoryButton(
              text: "PARENT",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Parentregistration()),
                );
              },
            ),
            SizedBox(height: 25.0),
            buildCategoryButton(
              text: "BABYSITTERS",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Babysittersregistration()),
                );
              },
            ),
            SizedBox(height: 25.0),
            buildCategoryButton(
              text: "DOCTORS",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Doctorregistration()),
                );
              },
            ),
            SizedBox(height: 25.0),
            buildCategoryButton(
              text: "ACTIVITY",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => login()),
                );
              },
            ),
            SizedBox(height: 25.0),
            Container(
              decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(15)),
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Logout",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.logout, color: Colors.black),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryButton({required String text, required VoidCallback onPressed}) {
    return Container(
      width: 350,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            Color(0xFFE8C4E9),
            Color(0xFFFFFFFF),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.zero,
          textStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
