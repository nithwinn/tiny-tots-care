import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiny_tots_care/Parent/p.home.dart';

class Parentregistration2 extends StatefulWidget {
  const Parentregistration2({Key? key});

  @override
  State<Parentregistration2> createState() => _Parentregistration2State();
}

class _Parentregistration2State extends State<Parentregistration2> {
  TextEditingController _p2nameEditingController = TextEditingController();
  TextEditingController _p2bloodgroupEditingController = TextEditingController();
  TextEditingController _p2occupationEditingController = TextEditingController();
  TextEditingController _p2emailEditingController = TextEditingController();
  TextEditingController _p2bloodgroup2EditingController = TextEditingController();

  File? _image;
  DateTime? _selectedDate;

  @override
  void initState(){
    super.initState();
    _image = null;
  }

  Future<void> _getImage() async {
    final pickedFile =
    await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile!.path);
      } else {
        print("No image selected.");
      }
    });
  }
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Email", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(controller: _p2emailEditingController,
                validator: (value){
                if (value == null || value.isEmpty){
                  return'enter email';
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
                child: Text("Date of Birth", style: TextStyle(color: Colors.black)),
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
                child: Text("Blood group", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                controller: _p2bloodgroupEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter blood group';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Blood group",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Occupation", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                controller: _p2occupationEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter occupation';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Occupation",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Photo", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: InkWell(
                  onTap: _getImage,
                  child: _image == null
                      ? Icon(Icons.add_a_photo)
                      : Image.file(_image!, height: 100, width: 100),
                ),
              ),
              SizedBox(height: 25,),
              Divider(
                thickness: 2,
                color: Colors.black,
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Child Details", style: TextStyle(fontSize:25,color: Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Photo", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              Container( height: 50,
                width: 60,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.black),
                ),
                child: InkWell(
                  onTap: _getImage,
                  child: _image == null
                      ? Icon(Icons.add_a_photo)
                      : Image.file(_image!, height: 100, width: 100),
                ),
              ),
              SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Name", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(controller: _p2nameEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter Name';
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
                child: Text("Date of Birth", style: TextStyle(color: Colors.black)),
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
                child: Text("Blood group", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                controller: _p2bloodgroup2EditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter Blood group';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Blood group",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 30,),
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
                    MaterialPageRoute(builder: (context) => Phome()),
                  );
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
      ),
    );
  }
}
