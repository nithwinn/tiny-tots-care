import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tiny_tots_care/DomainAmin.dart';

class LoginA extends StatefulWidget {
  const LoginA({Key? key}) : super(key: key);

  @override
  State<LoginA> createState() => _LoginAState();
}

class _LoginAState extends State<LoginA> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: const Color.fromARGB(255, 48, 46, 46),
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Email Id';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter Password';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
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
                            if (_formKey.currentState!.validate()) {
                              validateLogin();
                            }
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void validateLogin() async {
    setState(() {
      _isLoading = true;
    });

    final String enteredEmail = emailController.text;
    final String enteredPassword = passwordController.text;

    try {
      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('Admin')
          .where('email', isEqualTo: enteredEmail)
          .where('password', isEqualTo: enteredPassword)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        String docId = querySnapshot.docs.first.id;

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Invalid Credentials'),
              content: Text('Please enter valid email and password.'),
              actions: [
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
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
}
