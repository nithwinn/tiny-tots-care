import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Babysitters/loginb.dart';

class Babysittersregistration extends StatefulWidget {
  const Babysittersregistration({super.key});

  @override
  State<Babysittersregistration> createState() =>
      _BabysittersregistrationState();
}

class _BabysittersregistrationState extends State<Babysittersregistration> {
  var _nameController = TextEditingController();
  var _emailController = TextEditingController();
  var _addressController = TextEditingController();
  var _qualificationController = TextEditingController();
  var _experinceController = TextEditingController();
  var _idController = TextEditingController();
  var _phonenumberController = TextEditingController();
  var _passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          toolbarHeight: 50, // Set the height of the AppBar
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
                        return 'Please enter your name';
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
                        return 'Please enter your Email';
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
                    child:
                        Text("Address", style: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(height: 2.0),
                  TextFormField(
                    controller: _addressController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your address';
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
                    child: Text("Qualification",
                        style: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(height: 2.0),
                  TextFormField(
                    controller: _qualificationController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your qualification';
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
                    child: Text("Date of Birth",
                        style: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(height: 2.0),
                  GestureDetector(
                    onTap: () => _selectDate(context),
                    child: AbsorbPointer(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: _selectedDate != null
                              ? _selectedDate.toString().split(" ")[0]
                              : "DOB",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Experience",
                        style: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(height: 2.0),
                  TextFormField(
                    controller: _experinceController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your experience';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "Experience",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("ID Proof Number",
                        style: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(height: 2.0),
                  TextFormField(
                    controller: _idController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your ID proof number';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: "ID Proof Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Phone Number",
                              style: TextStyle(color: Colors.black)),
                        ),
                        SizedBox(height: 2.0),
                        TextFormField(
                          controller: _phonenumberController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xFF5E5BFF),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.all(6.0),
                            textStyle: const TextStyle(fontSize: 25),
                          ),
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              _addbabysitterregistration();
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginb()),
                              );
                            }
                          },
                          child: Center(
                            child: Text(
                              "SUBMIT",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void _addbabysitterregistration() async {
    if (formKey.currentState!.validate()) {
      String name = _nameController.text;
      String email = _emailController.text;
      String password = _passwordController.text;
      String address = _addressController.text;
      String qualification = _qualificationController.text;
      String experience = _experinceController.text;
      String idproof = _idController.text;
      String phonenumber = _phonenumberController.text;

      String userId = generateShortId(6);

      CollectionReference BabysittersRegistration =
          FirebaseFirestore.instance.collection('babysitters');

      if ((await BabysittersRegistration.doc(userId).get()).exists) {
        print('User already exists!');
        return;
      }
      await BabysittersRegistration.doc(userId).set({
        'BabysitterId': userId,
        'name': name,
        'email': email,
        'password': password,
        'address': address,
        'qualification': qualification,
        'experience': experience,
        'idproof': idproof,
        'phonenumber': phonenumber,
      });
      _nameController.clear();
      _emailController.clear();
      _passwordController.clear();
      _qualificationController.clear();
      _phonenumberController.clear();
      _addressController.clear();
      _idController.clear();
      _experinceController.clear();
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
