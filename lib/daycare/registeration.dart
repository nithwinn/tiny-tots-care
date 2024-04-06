import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tiny_tots_care/daycare/loginn.dart';

class DcareRegisteration extends StatefulWidget {
  const DcareRegisteration({Key? key}) : super(key: key);

  @override
  State<DcareRegisteration> createState() => _DcareRegisterationState();
}

class _DcareRegisterationState extends State<DcareRegisteration> {
  TextEditingController preschoolnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController preschoolAddressController = TextEditingController();

  final formKey = GlobalKey<FormState>();
void _registerDaycare() async {
  if (formKey.currentState!.validate()) {
    String preschoolName = preschoolnameController.text;
    String phone = phoneController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String preschoolAddress = preschoolAddressController.text;

    try {
      // Register daycare user with FirebaseAuth
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Generate daycare ID
      String daycareId = FirebaseFirestore.instance.collection('daycare').doc().id;

      // Save daycare details to Firestore
      await FirebaseFirestore.instance.collection('daycare').doc(daycareId).set({
        'daycareId': daycareId,
        'preschoolName': preschoolName,
        'phone': phone,
        'email': email,
        'password': password,
        'preschoolAddress': preschoolAddress,
      });

      // Navigate to login screen after registration
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DaycareLogin()),
      );
    } catch (error) {
      // Handle registration errors
      print("Error registering daycare: $error");
      // You can display an error message or toast here
    }
  }
}


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
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: TextFormField(
                      controller: preschoolnameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Preschool name",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Phone number",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Password",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 25),
                  child: TextFormField(
                    controller: preschoolAddressController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Previous school address",
                    ),
                  ),
                ),
                SizedBox(height: 70),
                GestureDetector(
                  onTap: _registerDaycare,
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
                            MaterialPageRoute(
                              builder: (context) => DaycareLogin(),
                            ),
                          );
                        },
                        child: Text(
                          " login",
                          style: TextStyle(fontSize: 20, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
