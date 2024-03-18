import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tiny_tots_care/screens/splash2.dart';
import 'package:tiny_tots_care/Doctors/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //     const Duration(seconds: 4),
  //         () => Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => const login()),
  //     ),
  //   );
  // }

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
          Padding(
            padding: const EdgeInsets.only(top: 70.0,),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 100,
                    height: 120,
                  ),
                  SizedBox(height: 10),
                  Text("TINY TOTS CARE",style: TextStyle(color: Colors.black)),
                  SizedBox(height: 250,),
    ClipRRect(
    borderRadius: BorderRadius.circular(4),
    child: Stack(
    children: <Widget>[
    Positioned.fill(
    child: Container(
    decoration: const BoxDecoration(
    gradient: LinearGradient(
    colors: Colors.primaries,
    ),
    ),
    ),
    ),
                  TextButton(
                  style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
    padding: const EdgeInsets.all(10.0),
    textStyle: const TextStyle(fontSize: 35),
    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Splash2()),
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
          )
        ],
      ),
    );
  }
}
