import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ParentRequest extends StatefulWidget {
  const ParentRequest({Key? key}) : super(key: key);

  @override
  State<ParentRequest> createState() => _ParentRequestState();
}

class _ParentRequestState extends State<ParentRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                  "Parent Request",
                  style: TextStyle(color: Colors.white, fontSize: 35),
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              "No Of Request",
              style: TextStyle(fontSize: 30),
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          SizedBox(height: 50),
          StreamBuilder(
            stream: FirebaseFirestore.instance.collection('parentregister').snapshots(),
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
              return Column(
                children: documents.map((doc) {
                  String parentName = doc['parentName'];
                  String email = doc['email'];
                  String phoneNumber = doc['phoneNumber'];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1.5,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ],
                        color: const Color.fromARGB(255, 219, 215, 215),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: 70,
                      width: 350,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              parentName,
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                          SizedBox(width: 75),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                            ),
                            onPressed: () {},
                            child: Text("Accept"),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                            ),
                            onPressed: () {},
                            child: Text("Reject"),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
          SizedBox(height: 320),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
