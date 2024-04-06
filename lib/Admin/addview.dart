import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/a&u.dart';
import '../DomainAmin.dart';
import '../Parent/p.home.dart';

class Addview extends StatefulWidget {
  const Addview({Key? key});

  @override
  State<Addview> createState() => _AddviewState();
}

class _AddviewState extends State<Addview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF61EDDC), Color(0xFFFFFFFF)],
                begin: Alignment.topRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Activities",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(height: 2.0),
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        "Dancing",
                        style: TextStyle(
                          backgroundColor: Colors.white10,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text("06/12/2023\n2:00pm"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 600,
              ),
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
