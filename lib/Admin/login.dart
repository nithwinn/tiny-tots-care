import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/category.dart';
import 'package:tiny_tots_care/DomainAmin.dart';

import 'forgotten.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailController =  TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/login.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                    child:
                        Text("LOGIN", style: TextStyle(color: Colors.black))),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: "email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 200.0),
                  child: TextButton(
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Forgotten()));
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
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
                            MaterialPageRoute(builder: (context) => Category()),
                          );
                        },
                        child: Center(
                          child: Text(
                            "LOG IN",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Center(
                  child: TextButton(
                    child: Text(
                      "Create an account",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Category()));
                    },
                  ),
                )
              ]),
        )
      ]),
    );
  }
}
