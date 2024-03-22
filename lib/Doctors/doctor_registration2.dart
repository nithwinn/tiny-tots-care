import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/logind.dart';

class Doctorregistration2 extends StatefulWidget {
  const Doctorregistration2({super.key});

  @override
  State<Doctorregistration2> createState() => _Doctorregistration2State();
}

class _Doctorregistration2State extends State<Doctorregistration2> {
  TextEditingController _d1ExperiencerEditingController = TextEditingController();

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
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Padding(
    padding: const EdgeInsets.all(10.0),
    child: Text("Experience", style: TextStyle(color: Colors.black)),
    ),
    SizedBox(height: 2.0),
    TextFormField(controller: _d1ExperiencerEditingController,
      validator: (value){
        if (value == null || value.isEmpty){
          return'enter Experience';
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
      SizedBox(height: 550,),
      TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFF5E5BFF),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(6.0),
          textStyle: const TextStyle(fontSize: 25),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Logind()),
          );
        },
        child: Center(
          child: Text(
            "SUBMIT",
          ),
        ),
      ),
      ]
    )
    )
    )
    );
  }
}
