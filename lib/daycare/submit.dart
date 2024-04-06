import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tiny_tots_care/daycare/myStaff.dart';

class StaffRegister extends StatefulWidget {
  const StaffRegister({Key? key});

  @override
  State<StaffRegister> createState() => _StaffRegisterState();
}

class _StaffRegisterState extends State<StaffRegister> {
  var staffnameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var qualificationController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25),
                  child: TextFormField(
                    controller: staffnameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Staff name"),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25),
                  child: TextFormField(
                    controller: phoneController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter phone number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Phone"),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25),
                  child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Email"),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25),
                  child: TextFormField(
                    controller: qualificationController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter qualification';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Qualification"),
                  ),
                ),
                SizedBox(height: 39),
                GestureDetector(
                  onTap: _staffregister,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF0E6174),
                        borderRadius: BorderRadius.circular(15)),
                    height: 60,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _staffregister() async {
    if (formKey.currentState!.validate()) {
      String staffName = staffnameController.text;
      String phoneNumber = phoneController.text;
      String email = emailController.text;
      String qualification = qualificationController.text;

      String userId = generateShortId(6);

      CollectionReference staffregister =
          FirebaseFirestore.instance.collection('staffregister');

      if ((await staffregister.doc(userId).get()).exists) {
        print('User already exists!');
        return;
      }

      await staffregister.doc(userId).set({
        'StaffId': userId,
        'staffName': staffName,
        'phoneNumber': phoneNumber,
        'email': email,
        'qualification': qualification,
      });

      staffnameController.clear();
      phoneController.clear();
      emailController.clear();
      qualificationController.clear();

      // Navigate to MyStaFF screen after submitting the form
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyStaFF()),
      );
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
