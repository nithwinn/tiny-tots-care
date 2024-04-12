import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/baby_health.dart';

class AddHealth extends StatefulWidget {
  const AddHealth({Key? key}) : super(key: key);

  @override
  State<AddHealth> createState() => _AddHealthState();
}

class _AddHealthState extends State<AddHealth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF5C0B9C),
        toolbarHeight: 60,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Date",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Time",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Activity",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BabyHealth(),
                  ),
                );
              },
              child: Text(
                "Update",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
