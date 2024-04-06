import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tiny_tots_care/Parent/loginp.dart';

class ParentRegister extends StatefulWidget {
  const ParentRegister({Key? key}) : super(key: key);

  @override
  State<ParentRegister> createState() => _ParentRegisterState();
}

class _ParentRegisterState extends State<ParentRegister> {
  var _parentNameController = TextEditingController();
  var _phoneNumberController = TextEditingController();
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Center(
                child: Container(
                  child: Image.asset('assets/day.png'),
                ),
              ),
            ),
            SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _parentNameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Parent name",
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _phoneNumberController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Phone number",
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Email",
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                      ),
                    ),
                    SizedBox(height: 90),
                    GestureDetector(
                      onTap: _register,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF0E6174),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 70,
                        width: 350,
                        child: Center(
                          child: Text(
                            "REGISTER",
                            style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 75),
                      child: Row(
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Loginp()),
                              );
                            },
                            child: Text(
                              " login",
                              style: TextStyle(fontSize: 20, color: Colors.blue),
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
      ),
    );
  }

  void _register() async {
    if (_formKey.currentState!.validate()) {
      String parentName = _parentNameController.text;
      String phoneNumber = _phoneNumberController.text;
      String email = _emailController.text;
      String password = _passwordController.text;

      String userId = generateShortId(6);

      CollectionReference parentRegister =
          FirebaseFirestore.instance.collection('parentregister');

      if ((await parentRegister.doc(userId).get()).exists) {
        print('User already exists!');
        return;
      }

      await parentRegister.doc(userId).set({
        'ParentId': userId,
        'parentName': parentName,
        'phoneNumber': phoneNumber,
        'email': email,
        'password': password,
      });

      _parentNameController.clear();
      _phoneNumberController.clear();
      _emailController.clear();
      _passwordController.clear();
    }
  }

  String generateShortId(int length) {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => chars.codeUnitAt(random.nextInt(chars.length)),
      ),
    );
  }
}
