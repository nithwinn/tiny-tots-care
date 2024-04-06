import 'package:flutter/material.dart';
import 'package:tiny_tots_care/DomainAmin.dart';

class AdminBabysitterEdit2 extends StatefulWidget {
  const AdminBabysitterEdit2({super.key});

  @override
  State<AdminBabysitterEdit2> createState() => _AdminBabysitterEdit2State();
}

class _AdminBabysitterEdit2State extends State<AdminBabysitterEdit2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/b1.png',
            fit: BoxFit.fill,
          ),
        ),
        title: const Text(
          'Dayana\nFemale',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Address",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminBabysitterEdit2(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Occupation",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminBabysitterEdit2(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Phone Number",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminBabysitterEdit2(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Whatsapp Number",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminBabysitterEdit2(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 470),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.home),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                      ),
                      Text("Home"),
                    ],
                  ),
                    ],
                  ),
                ],
              ),
        ),
        ),
    );
  }
}
