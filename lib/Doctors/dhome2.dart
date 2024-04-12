import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tiny_tots_care/Doctors/dhome.dart';
import 'package:tiny_tots_care/Doctors/doctor_edit.dart';
import 'package:tiny_tots_care/Doctors/doctor_edit.dart';

class Dhome2 extends StatefulWidget {
  const Dhome2({Key? key});

  @override
  State<Dhome2> createState() => _Dhome2State();
}

class _Dhome2State extends State<Dhome2> {
  late String doctorId;

  @override
  void initState() {
    super.initState();
    getDoctorId();
  }

  Future<void> getDoctorId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    doctorId = prefs.getString('doctorId') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF77A4CC), Color(0xFFFFFFFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 50,
                    width: 50,
                  ),
                  Text("Edit",
                  style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold),),
                     IconButton(
                      icon: Icon(Icons.edit),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Editdr()),
                        );
                      },
                    ),
                ]
              ),
            ),
          ),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('doctors').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          final List<DocumentSnapshot> documents = snapshot.data!.docs;
          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (context, index) {
              final Map<String, dynamic> data = documents[index].data() as Map<String, dynamic>;
              return Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 17,
                                  ),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 4,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            "assets/doctor1.png",
                                            height: 100,
                                            width: 150,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          "Dr.${data['name']}",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 55),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Visiting Time: ${data['visiting time']}",
                                            style: TextStyle(color: Colors.black, fontSize: 20),
                                          ),
                                          IconButton(
                                            icon: Icon(Icons.edit),
                                            color: Colors.black,
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Dhome2(),
                                                ),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Qualification: ${data['qualification']}",
                                        style: TextStyle(color: Colors.black, fontSize: 20),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        "Specialization: ${data['specialization']}",
                                        style: TextStyle(color: Colors.black, fontSize: 20),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Office Address: ${data['officeAddress']}",
                                            style: TextStyle(color: Colors.black, fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 260),
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
                                                      builder: (context) => Dhome(),
                                                    ),
                                                  );
                                                },
                                              ),
                                              Text("Home"),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              IconButton(
                                                icon: Icon(Icons.person),
                                                color: Colors.black,
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) => Dhome2(),
                                                    ),
                                                  );
                                                },
                                              ),
                                              Text("Profile"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
