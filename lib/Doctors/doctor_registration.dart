import 'dart:math';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tiny_tots_care/Doctors/logind.dart';
import 'package:tiny_tots_care/Doctors/dhome.dart';

class DoctorRegistration extends StatefulWidget {
  const DoctorRegistration({Key? key}) : super(key: key);

  @override
  State<DoctorRegistration> createState() => _DoctorRegistrationState();
}

class _DoctorRegistrationState extends State<DoctorRegistration> {
  var _nameController = TextEditingController();
  var _emailController = TextEditingController();
  var _qualificationController = TextEditingController();
  var _specializationController = TextEditingController();
  var _addressController = TextEditingController();
  var _officeaddressController = TextEditingController();
  var _experienceController = TextEditingController();
  var _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight: 50,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.fill,
          ),
        ),
        title: const Text(
          'Tiny Tots Care',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Name", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Email", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:
                      Text("Password", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
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
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Qualification",
                      style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _qualificationController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Qualification';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Qualification",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Specialization",
                      style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _specializationController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Specialization';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Specialization",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Address", style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Office Address",
                      style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _officeaddressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Office address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Office Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:
                      Text("Experience", style: TextStyle(color: Colors.black)),
                ),
                TextFormField(
                  controller: _experienceController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Experience';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Experince",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF5E5BFF),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(12.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: _doctorRegistration,
                  child: Text("SUBMIT"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _doctorRegistration() async {
    if (formKey.currentState!.validate()) {
      String name = _nameController.text;
      String email = _emailController.text;
      String password = _passwordController.text;
      String qualification = _qualificationController.text;
      String specialization = _specializationController.text;
      String address = _addressController.text;
      String officeaddress = _officeaddressController.text;
      String experience = _experienceController.text;

      String userId = generateShortId(6);

      CollectionReference doctorRegistration =
          FirebaseFirestore.instance.collection('doctors');

      if ((await doctorRegistration.doc(userId).get()).exists) {
        print('Doctor already exists!');
        return;
      }

      await doctorRegistration.doc(userId).set({
        'DoctorId': userId,
        'name': name,
        'email': email,
        'password': password,
        'qualification': qualification,
        'specialization': specialization,
        'address': address,
        'officeaddress': officeaddress,
        'experience': experience,
      });

      _nameController.clear();
      _emailController.clear();
      _passwordController.clear();
      _qualificationController.clear();
      _specializationController.clear();
      _addressController.clear();
      _officeaddressController.clear();
      _experienceController.clear();

      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Dhome()),
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
