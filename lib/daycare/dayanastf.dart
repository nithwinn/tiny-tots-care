import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Home_day extends StatefulWidget {
  final String StaffId;

  const Home_day({Key? key, required this.StaffId}) : super(key: key);

  @override
  State<Home_day> createState() => _Home_dayState();
}

class _Home_dayState extends State<Home_day> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('staffregister').snapshots(),
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
          final filteredDocuments = documents.where((doc) => doc['StaffId'] == widget.StaffId).toList();
          if (filteredDocuments.isEmpty) {
            return Center(
              child: Text('No data found for StaffId: ${widget.StaffId}'),
            );
          }
          return ListView.builder(
            itemCount: filteredDocuments.length,
            itemBuilder: (context, index) {
              final Map<String, dynamic> data = filteredDocuments[index].data() as Map<String, dynamic>;
              return Column(
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xFF750A64),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(55.0),
                        bottomLeft: Radius.circular(55.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 55),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              data['staffName'],
                              style: TextStyle(color: Colors.white, fontSize: 40),
                            ),
                            Text(
                              "Staff",
                              style: TextStyle(color: Colors.black, fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 95),
                    child: Text(
                      "Number Of Student: 10",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 95),
                    child: Text(
                      "Duty time : 10:00 to 3:00",
                      style: TextStyle(fontSize: 20),
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
