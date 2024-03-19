import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Doctors/doctor_registration2.dart';

class Doctorregistration extends StatefulWidget {
  const Doctorregistration({super.key});

  @override
  State<Doctorregistration> createState() => _DoctorregistrationState();
}

class _DoctorregistrationState extends State<Doctorregistration> {
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
                child: Text("Name", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Qualification", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Qualification",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Specialization", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Specialization",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Home Address", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Home Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Office Address", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Office Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 20,),
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
                    MaterialPageRoute(builder: (context) => Doctorregistration2()),
                  );
                },
                child: Center(
                  child: Text(
                    "Next",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
