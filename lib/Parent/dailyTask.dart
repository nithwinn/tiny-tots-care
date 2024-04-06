import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Dailytask extends StatefulWidget {
  const Dailytask({super.key});

  @override
  State<Dailytask> createState() => _DailytaskState();
}

class _DailytaskState extends State<Dailytask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/WhatsApp Image 2024-03-30 at 11.55.10 AM.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, right: 220),
                child: Text(
                  "Today",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('assets/Image.png'),
                              fit: BoxFit.cover,
                            ))),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 40),
                    child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('assets/Image.png'),
                              fit: BoxFit.cover,
                            ))),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 130,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/Rectangle 56.png'),
                        fit: BoxFit.cover,
                      ))),
              SizedBox(
                height: 45,
              ),
              Container(
                  height: 130,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/Rectangle 56.png'),
                        fit: BoxFit.cover,
                      ))),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 70, right: 220),
                child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/Image.png'),
                          fit: BoxFit.cover,
                        ))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.home),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        Text("Home"),
                      ],
                    ),
                    SizedBox(
                        width: 60.0), // Add spacing between IconButton and Text
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.add_circle),
                          color: Colors.black,
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => Activity1()),
                            // );
                          },
                        ),
                        Text("Activity"),
                      ],
                    ),
                    SizedBox(
                        width: 60.0), // Add spacing between IconButton and Text
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.child_care),
                          color: Colors.black,
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => BabyProfile()),
                            // );
                          },
                        ),
                        Text("My child"),
                      ],
                    ),
                    SizedBox(
                        width: 60.0), // Add spacing between IconButton and Text
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.person),
                          color: Colors.black,
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => ParentProfile()),
                            // );
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
        ]),
      ),
    );
  }
}