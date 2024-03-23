import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/adminDproedit1.dart';

class AdminDoctor extends StatefulWidget {
  const AdminDoctor({super.key});

  @override
  State<AdminDoctor> createState() => _AdminDoctorState();
}

class _AdminDoctorState extends State<AdminDoctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF77A4CC), Color(0xFFFFFFFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 75,top: 20),
            child: Text(
              'Doctor',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Container(
        padding: EdgeInsets.symmetric(
        horizontal: 5,
          vertical: 1,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 0.5,
              offset: Offset(0, 1),
            ),
          ],
          color: Colors.white,
        ),
        child: Row(
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/doctor12.png",
                  height: 100,
                  width: 150,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Dr. Sarah",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
               SizedBox(width: 15,),
                IconButton(
                  icon: Icon(Icons.edit),
                  color: Colors.grey,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminDprofileEdit()),
                    );
                  },
                ),

                IconButton(
                  icon: Icon(Icons.delete_outline_outlined),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdminDprofileEdit()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),]
    )
    )
    );
  }
}
