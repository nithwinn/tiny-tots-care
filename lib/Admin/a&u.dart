import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/update.dart';

import '../DomainAmin.dart';

class AddandUpdate extends StatefulWidget {
  const AddandUpdate({Key? key});

  @override
  State<AddandUpdate> createState() => _AddandUpdateState();
}

class _AddandUpdateState extends State<AddandUpdate> {
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
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text("Dancing"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 105, top: 65),
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(border: Border.all()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.add_circle_outline_sharp),
                    color: Colors.black,
                    onPressed: () {
                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Update()),
                      );
                    },
                  ),
                  Text(
                    "UPDATE",
                    style: TextStyle(
                      backgroundColor: Colors.white10,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 105, top: 15),
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(border: Border.all()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.delete_outline),
                    color: Colors.black,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Update()),
                      // );
                    },
                  ),
                  Text(
                    "DELETE",
                    style: TextStyle(
                      backgroundColor: Colors.white10,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 450,),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 50),
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home()),
                    );
                  },
                ),
                Text("Home"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
