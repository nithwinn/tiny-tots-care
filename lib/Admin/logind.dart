import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tiny_tots_care/Admin/forgotten.dart';
import 'package:tiny_tots_care/Doctors/dhome.dart';

import '../DomainAmin.dart';
class Logind extends StatefulWidget {
  const Logind({super.key});

  @override
  State<Logind> createState() => _LogindState();
}

class _LogindState extends State<Logind> {
  TextEditingController emailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); 

  Future<void> _login() async {
  if (_formKey.currentState!.validate()) {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: PasswordController.text,
      );

      User? user = userCredential.user;

        DocumentSnapshot<Map<String, dynamic>> snapshot =
          await FirebaseFirestore.instance
              .collection('doctor')
              .doc(user!.uid)
              .get();

      if (snapshot.exists) {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('DoctorrId', user.uid);

          Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Dhome()),
        );
      } else {
        
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Login Error'),
              content: Text('User not found or unauthorized.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Login Error'),
              content: Text('Invalid email or password.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    }
  }
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
          children: [
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
                    Center(child: Text("LOGIN",style: TextStyle(color: Colors.black))),
                    SizedBox(height: 50,),
                    TextFormField(
                      controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                      decoration: InputDecoration(
                        hintText: "email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                    ),),
                    SizedBox(height: 15,),
                    TextFormField(
                      controller: PasswordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Password';
                      }
                      return null;
                    },
                      decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                    ),),
                    SizedBox(height: 10,),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgotten()));
                        },
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
                                MaterialPageRoute(builder: (context) => Dhome()),
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
                  ]
              ),
            )
          ]
      ),
    );
  }
}
