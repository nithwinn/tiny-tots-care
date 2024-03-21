import 'package:flutter/material.dart';

class Addview extends StatefulWidget {
  const Addview({super.key});

  @override
  State<Addview> createState() => _AddviewState();
}

class _AddviewState extends State<Addview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
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
    title: Text(
    'Add Activity',
    style: TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
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
    child: Text("Activity", style: TextStyle(color: Colors.black)),
    ),
    SizedBox(height: 2.0),
      Container(
        height: 50,
        width: 180,
        decoration: BoxDecoration(border: Border.all()),
        child: TextButton(
          child: Row(
            children: [
              Text(
                "Dancing",
                style: TextStyle(
                  backgroundColor: Colors.white10,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 255,),
              Text("data")
            ],
          ),
          onPressed: () {},
        ),
      ),

    ]
    )
    )
    )
    );
  }
}
