import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/AdminP_edit2.dart';

import 'adminDproedit1.dart';

class AdminParent extends StatefulWidget {
  const AdminParent({super.key});

  @override
  State<AdminParent> createState() => _AdminParentState();
}

class _AdminParentState extends State<AdminParent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFE8C4E9), Color(0xFFFFFFFF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 75,top: 20),
              child: Text(
                'Parent',
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
                              "assets/p1.png",
                              height: 100,
                              width: 150,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Aswathi",
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
                                      builder: (context) =>AdminParentEdit()),
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
