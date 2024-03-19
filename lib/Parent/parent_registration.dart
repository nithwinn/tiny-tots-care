import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/parent_registration2.dart';

class Parentregistration extends StatefulWidget {
  const Parentregistration({super.key});

  @override
  State<Parentregistration> createState() => _ParentregistrationState();
}

class _ParentregistrationState extends State<Parentregistration> {
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
                child: Text("Address", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Pin code", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Pin code",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Phone number", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Phone number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Whatsapp", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Whatsapp",
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
                    MaterialPageRoute(builder: (context) => Parentregistration2()),
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

