import 'package:flutter/material.dart';
import 'package:tiny_tots_care/daycare/childrenview.dart';

class Children extends StatefulWidget {
  const Children({super.key});

  @override
  State<Children> createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFF750A64),
                 borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(55.0),
                              bottomLeft: Radius.circular(55.0),
                            ),
                ),
            child: Center(
              child: Text(
                "Children",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
       Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Text(
            "No Of Children",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Divider(
          thickness: 1,
          color: Colors.black,
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          decoration: BoxDecoration(
             boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 145, 143, 143).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ],
              color: Color.fromARGB(255, 235, 231, 231), borderRadius: BorderRadius.circular(15)),
          height: 70,
          width: 350,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  "Jeni",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                width: 105,
              ),
             
              ElevatedButton(
                  style: ButtonStyle(), 
                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ChildrenView()),
                                      );
                  }, child: Text("View"))
            ],
          ),
        ),
       
        SizedBox(
          height: 420,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Center(
            child: IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
          ),
        )
      ]),
    );
  }
}