import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/parent_registration2.dart';

class Parentregistration extends StatefulWidget {
  const Parentregistration({super.key});

  @override
  State<Parentregistration> createState() => _ParentregistrationState();
}

class _ParentregistrationState extends State<Parentregistration> {
  TextEditingController _p1nameEditingController = TextEditingController();
  TextEditingController _p1addressEditingController = TextEditingController();
  TextEditingController _p1pincodeEditingController = TextEditingController();
  TextEditingController _p1phonenumberEditingController = TextEditingController();
  TextEditingController _p1whatsappEditingController = TextEditingController();
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
                controller: _p1nameEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter email';
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
                child: Text("Address", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(controller: _p1addressEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter email';
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
                child: Text("Pin code", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(controller: _p1pincodeEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter email';
                  }
                  return null;
                },
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
              TextFormField(controller: _p1phonenumberEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter Phone number';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
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
              TextFormField(controller: _p1whatsappEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter whatsapp';
                  }
                  return null;
                },
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

