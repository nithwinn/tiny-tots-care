import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tiny_tots_care/daycare/home_day.dart';
import 'package:tiny_tots_care/daycare/registeration.dart';

class DaycareLogin extends StatefulWidget {
  const DaycareLogin({Key? key});
  @override
  State<DaycareLogin> createState() => _DaycareLoginState();
}

class _DaycareLoginState extends State<DaycareLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  Future<void> _saveUserIdToSharedPreferences(String userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('daycareId', userId);
  }

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

  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 25),
              child: Container(
                child: Image.asset('assets/TinyTots Care.png'),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'WELCOME',
                style: TextStyle(
                  fontFamily: 'Irish Grover',
                  fontSize: 40,
                  fontWeight: FontWeight.w400,
                  height: 1.209,
                ),
              ),
            ),
            SizedBox(height: 40,),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Username",
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: passwordVisible,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 80,),
            GestureDetector(
              onTap: validateLogin,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0E6174),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 50,
                width: 250,
                child: Center(
                  child: _isLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontSize: 30,
                          ),
                        ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            GestureDetector(
              onTap: (){
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DcareRegisteration()),
                    );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0E6174),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 50,
                width: 250,
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
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
          .collection('daycare')
          .where('email', isEqualTo: enteredEmail)
          .where('password', isEqualTo: enteredPassword)
          .limit(1)
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        String docId = querySnapshot.docs.first.id;

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => MySchool()),
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
