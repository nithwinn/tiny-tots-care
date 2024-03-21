import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Babysitters/babysitters_registration2.dart';

class Babysittersregistration extends StatefulWidget {
  const Babysittersregistration({super.key});

  @override
  State<Babysittersregistration> createState() => _BabysittersregistrationState();
}

class _BabysittersregistrationState extends State<Babysittersregistration> {
  TextEditingController _b1nameEditingController = TextEditingController();
  TextEditingController _b1addressEditingController = TextEditingController();
  TextEditingController _b1qualificationEditingController = TextEditingController();
  TextEditingController _b1experinceEditingController = TextEditingController();
  TextEditingController _b2idEditingController = TextEditingController();

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Name", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(
                controller: _b1nameEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter name';
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
              TextFormField(controller: _b1addressEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter address';
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
                child: Text("Qualification", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(controller: _b1qualificationEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter qualification';
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
                child: Text("Experince", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
              TextFormField(controller: _b1experinceEditingController,
                validator: (value){
                  if (value == null || value.isEmpty){
                    return'enter experience';
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
              SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("ID Proof Number", style: TextStyle(color: Colors.black)),
              ),
              SizedBox(height: 2.0),
                TextFormField(controller: _b2idEditingController,
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return'enter ID proof';
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
                    MaterialPageRoute(builder: (context) => Babysittersregistration2()),
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
