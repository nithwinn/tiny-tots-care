import 'package:flutter/material.dart';

class Parentregistration2 extends StatefulWidget {
  const Parentregistration2({super.key});

  @override
  State<Parentregistration2> createState() => _Parentregistration2State();
}

class _Parentregistration2State extends State<Parentregistration2> {
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
          child: Text("Email", style: TextStyle(color: Colors.black)),
        ),
        SizedBox(height: 2.0),
        TextFormField(
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
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Date of Birth",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Blood group", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
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
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Image",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Child Details", style: TextStyle(fontSize:25,color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Photo", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Image",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
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
                  child: Text("Date of Birth", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "DOB",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Blood group", style: TextStyle(color: Colors.black)),
                ),
                SizedBox(height: 2.0),
                TextFormField(
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
                      MaterialPageRoute(builder: (context) => Parentregistration2()),
                    );
                  },
                  child: Center(
                    child: Text(
                      "SUBMIT",
                    ),
                  ),
                ),
        ]
      ),
    ),
      )
    );
  }
}
