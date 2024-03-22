import 'package:flutter/material.dart';

import 'dhome.dart';

class Dhome2 extends StatefulWidget {
  const Dhome2({Key? key});

  @override
  State<Dhome2> createState() => _Dhome2State();
}

class _Dhome2State extends State<Dhome2> {
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
            child: Center(
              child: Image.asset(
                'assets/logo.png',
                height: 50,
                width: 50,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 17,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 4,
                                offset: Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/doctor1.png",
                                    height: 100,
                                    width: 150,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dr. Sarah",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Visiting Time\n11:30am-3:30pm",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 55),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Visiting Time",
                                    style: TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    color: Colors.black,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Dhome2(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                "Qualification",
                                style: TextStyle(color: Colors.black, fontSize: 20),
                              ),
                              SizedBox(height: 15),
                              Text(
                                "Specialization",
                                style: TextStyle(color: Colors.black, fontSize: 20),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Home Address",
                                    style: TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    color: Colors.black,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Dhome2(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Office Address",
                                    style: TextStyle(color: Colors.black, fontSize: 20),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.edit),
                                    color: Colors.black,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Dhome2(),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 260),
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
                                              builder: (context) => Dhome(),
                                            ),
                                          );
                                        },
                                      ),
                                      Text("Home"),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.person),
                                        color: Colors.black,
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Dhome2(),
                                            ),
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
