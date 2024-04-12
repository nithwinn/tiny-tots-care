import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiny_tots_care/Babysitters/loginb.dart';
import 'package:tiny_tots_care/Doctors/logind.dart';
import 'package:tiny_tots_care/Parent/loginp.dart';
import 'package:tiny_tots_care/Parent/parent_registration2.dart';
import 'package:tiny_tots_care/Parent/parentregister.dart';
import 'package:tiny_tots_care/daycare/loginn.dart';
import 'package:tiny_tots_care/daycare/registeration.dart';

import '../Babysitters/babysitters_registration.dart';
import '../Doctors/doctor_registration.dart';
import 'login.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ))),
              ),
              SizedBox(
                height: 25.0,
              ),
              GestureDetector(
                onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Loginp()),
                    );
                },
                child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        8), // Optional: adjust the radius as needed
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFE8C4E9),
                        Color(0xFFFFFFFF),
                      ],
                      begin: Alignment.topCenter, // Gradient start position
                      end: Alignment.bottomCenter, // Gradient end position
                    ),
                  ),
                 
                    child: Center(
                      child: Text(
                        "PARENT",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  
                ),
              ),
              SizedBox(height: 25.0),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Loginb()),
                    );
                },
                child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        8), // Optional: adjust the radius as needed
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFFFB94),
                        Color(0xFFFFFFFF),
                      ],
                      begin: Alignment.topCenter, // Gradient start position
                      end: Alignment.bottomCenter, // Gradient end position
                    ),
                  ),
                    child: Center(
                      child: Text(
                        "BABYSITTERS",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                ),
              ),
              SizedBox(height: 25.0),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Logind()),
                    );
                },
                child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        8), 
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFBFD2E4),
                        Color(0xFFFFFFFF),
                      ],
                      begin: Alignment.topCenter, 
                      end: Alignment.bottomCenter, 
                    ),
                  ),
                 
                    child: Center(
                      child: Text(
                        "DOCTORS",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                   
                ),
              ),
              SizedBox(height: 25.0),
              GestureDetector(
                onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DaycareLogin()),
                    );
                },
                child: Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        8), 
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF86B425),
                        Color(0xFFFFFFFF),
                      ],
                      begin: Alignment.topCenter, 
                      end: Alignment.bottomCenter, 
                    ),
                  ),
                  
                    child: Center(
                      child: Text(
                        "DAYCARE",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                   
                ),
              ),
              SizedBox(
                height: 58.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.phone),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    Text(
                      "Childline Number: 1098",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
