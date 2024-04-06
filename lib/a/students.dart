import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Babysitters/Babysitter_profile.dart';
import 'package:tiny_tots_care/Babysitters/teacher_home.dart';

class StudentScreen extends StatefulWidget {
  const StudentScreen({super.key});

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: ,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("students",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  Divider(
                    color: Colors.black,
                  ),
                  
                  Row(
                    children: [
                      Image.asset("assets/c1.png"),
                      SizedBox(width: 8,),
                      Image.asset("assets/p1.png")
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Time:",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                        SizedBox(width: 20,),
                        Text("Today,2:55pm",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 169, 53, 150),
      
                        ),),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.black,
                          onPressed: () {
      
                          },
                        ),
      
                      ],
                    ),
                  ),
                  Divider(color: Colors.black,),
                  SizedBox(height: 10,),
                  Row(
                   children: [
                     Text("Photo",style: TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.bold,
                       color: Colors.black,
                     ),),
                     Spacer(),
                     IconButton(
                       icon: Icon(Icons.close),
                       color: Colors.black,
                       onPressed: () {
      
                       },
                     ),
      
                   ],
      
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Image.asset(
                      "assets/student.png",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover, // Specify the fit property here
                    ),
                  ),
                  Text("Note",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                  SizedBox(height: 15,),
      
                  Container(
                    child: Text("They are playing together",style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    )),
      
                  ),
                  Divider(color: Colors.black,),
                  SizedBox(height: 50,),
                  ElevatedButton(
      
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF5C0B9C),
      
                      textStyle: const TextStyle(fontSize: 25),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => DoctorBooking3()),
                      // );
                    },
                    child: Center(
                      child:  Text("Add Activity",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,)
                        ,  ),
                    ),
                  ),
      
       SizedBox(height: 25,),
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
                              builder: (context) => TeacherHome()),
                        );
                      },
                    ),
                    Text("Home"),
                  ],
                ),
                SizedBox(width: 35,),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.person),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BabySitterProfile()),
                        );
                      },
                    ),
                    Text("Profile"),
                  ],
                ),
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
