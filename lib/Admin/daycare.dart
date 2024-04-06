import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tiny_tots_care/DomainAmin.dart';

class DayCare1 extends StatefulWidget {
  const DayCare1({Key? key}) : super(key: key);

  @override
  State<DayCare1> createState() => _DayCare1State();
}

class _DayCare1State extends State<DayCare1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
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
          // Data snapshot is ready
          final List<DocumentSnapshot> documents = snapshot.data!.docs;
          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (context, index) {
              final Map<String, dynamic> data = documents[index].data() as Map<String, dynamic>;
              return Container(
                height: size.height,
                width: size.width,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60),
                      child: Center(
                        child: Text(
                          "DAY CARE",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    buildDaycareRow(data['name']),
                    Divider(thickness: 0.5, color: Colors.black),
                    Padding(
                      padding: const EdgeInsets.only(top: 460, left: 0),
                      child: Column(
                        children: [
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
                          Text("Home"),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget buildDaycareRow(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        ],
      ),
    );
  }
}
