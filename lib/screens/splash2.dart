import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/category.dart';
import 'package:tiny_tots_care/Admin/loginA.dart';
import '../Admin/login.dart';
import '../DomainAmin.dart';


class Splash2 extends StatefulWidget {
  const Splash2({Key? key});

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splash.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 15, top: 40),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginA()),
                  );
                },
                child: Text(
                  "ADMIN",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 100,
                    height: 120,
                  ),
                  SizedBox(height: 10),
                  Text("TINY TOTS CARE", style: TextStyle(color: Colors.black)
                  ),
                  SizedBox(height: 250),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.all(10.0),
                            textStyle: const TextStyle(fontSize: 35),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Category()),
                            );
                          },
                          child: Text(
                            "START",
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
