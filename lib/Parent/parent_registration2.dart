import 'dart:io';
import 'dart:math';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiny_tots_care/Parent/loginp.dart';
import 'package:tiny_tots_care/Parent/p.home.dart';

class Parentregistration extends StatefulWidget {
  const Parentregistration({Key? key}) : super(key: key);

  @override
  State<Parentregistration> createState() => _ParentregistrationState();
}

class _ParentregistrationState extends State<Parentregistration> {
  var _nameController = TextEditingController();
  var _addressController = TextEditingController();
  var _pincodeController = TextEditingController();
  var _bloodgroupController = TextEditingController();
  var _occupationController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  File? _image;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _image = null;
  }

  Future<void> _getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
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
          'Little kids',
          style: TextStyle(
            color: Color.fromARGB(255, 2, 2, 2),
            fontWeight: FontWeight.bold,
          ),
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
                      return 'Enter Child Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Child Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                // Widget for address
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Address", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  maxLines: 4,
                  controller: _addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter address';
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
                // Widget for pin code
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Pin code", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  controller: _pincodeController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter pin code';
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
                // Widget for date of birth
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
                // Widget for blood group
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Blood group", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  controller: _bloodgroupController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter blood group';
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
                // Widget for guardian occupation
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Guardian Occupation", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  controller: _occupationController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter occupation';
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
                // Widget for photo
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Photo", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.black),
                  ),
                  child: InkWell(
                    onTap: _getImage,
                    child: _image == null
                        ? Icon(Icons.add_a_photo)
                        : Image.file(_image!, height: 100, width: 100),
                  ),
                ),
                SizedBox(height: 30),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF5E5BFF),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(6.0),
                    textStyle: const TextStyle(fontSize: 25),
                  ),
                  onPressed: _parentRegistration,
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
      ),
    );
  }

  void _parentRegistration() async {
  if (formKey.currentState!.validate() && _image != null) {
    String name = _nameController.text;
    String address = _addressController.text;
    String pincode = _pincodeController.text;
    String bloodgroup = _bloodgroupController.text;
    String occupation = _occupationController.text;

    String userId = generateShortId(6);

    CollectionReference parentregistration =
        FirebaseFirestore.instance.collection('parent');

    if ((await parentregistration.doc(userId).get()).exists) {
      print('Parent already exists');
      return;
    }

    final ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('parent_images')
        .child(DateTime.now().millisecondsSinceEpoch.toString());
    await ref.putFile(_image!);
    final imageURL = await ref.getDownloadURL();

    await parentregistration.doc(userId).set({
      'ParentId': userId,
      'name': name,
      'address': address,
      'pincode': pincode,
      'bloodgroup': bloodgroup,
      'occupation': occupation,
      'imageURL': imageURL,
    });

    _nameController.clear();
    _addressController.clear();
    _pincodeController.clear();
    _bloodgroupController.clear();
    _occupationController.clear();
    setState(() {
      _image = null;
    });

    // Navigate to PHome after successful registration
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Phome()),
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
