import 'package:flutter/material.dart';

class AdminParentEdit extends StatefulWidget {
  const AdminParentEdit({Key? key}) : super(key: key);

  @override
  State<AdminParentEdit> createState() => _AdminParentEditState();
}

class _AdminParentEditState extends State<AdminParentEdit> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/p1.png',
            fit: BoxFit.fill,
          ),
        ),
        title: const Text(
          'Aswathi\nFemale',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Visiting Time",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.black,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => Dhome2()),
                      // );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Qualification",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle_outline_sharp),
                    color: Colors.black,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => Dhome2()),
                      // );
                    },
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Date of Birth",
                  border: OutlineInputBorder(
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Experiance",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.black,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => Dhome2()),
                      // );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "ID Proof Number",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.black,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => Dhome2()),
                      // );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Blood Group",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.black,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => Dhome2()),
                      // );
                    },
                  ),
                ],
              ),
              SizedBox(height: 18,),
              Padding(
                padding: const EdgeInsets.only(right: 299),
                child: Text("Child",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset(
                        "assets/c1.png",
                        height: 100,
                        width: 150,
                      ),
                    ),
                  ),
                  Text("Jeni\nFemale",style: TextStyle(fontSize: 20),),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Date of Birth",
                  border: OutlineInputBorder(
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Blood Group",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.edit),
                    color: Colors.black,
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => Dhome2()),
                      // );
                    },
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
