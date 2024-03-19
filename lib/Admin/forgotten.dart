import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/forgottenb.dart';

class Forgotten extends StatefulWidget {
  const Forgotten({super.key});

  @override
  State<Forgotten> createState() => _ForgottenState();
}

class _ForgottenState extends State<Forgotten> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(right: 280.0),
              child: Text("New Password", style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 2.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 280.0),
              child: Text("Confirm Password", style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 2.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Confirm Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 50,),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.all(6.0),
                      textStyle: const TextStyle(fontSize: 25),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Forgottenb()),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Done",
                      ),
                    ),
                  ),

                ],
              ),

            ),
          ]
      ),
    );
  }
}
