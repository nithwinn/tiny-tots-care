import 'package:flutter/material.dart';

class Phome extends StatefulWidget {
  const Phome({Key? key});

  @override
  State<Phome> createState() => _PhomeState();
}

class _PhomeState extends State<Phome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 700),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/blurlogo.png"),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(right: 15, top: 40),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: IconButton(
                      icon: Icon(Icons.logout),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                  Text(
                    "Logout",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/phome.png",
                    width: 330,
                    height: 142,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
