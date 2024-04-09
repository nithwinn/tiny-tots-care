import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tiny_tots_care/Admin/AdminP_edit2.dart';
import 'package:tiny_tots_care/DomainAmin.dart';

import 'adminDproedit1.dart';

class AdminParent extends StatefulWidget {
  const AdminParent({Key? key}) : super(key: key);

  @override
  State<AdminParent> createState() => _AdminParentState();
}

class _AdminParentState extends State<AdminParent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFE8C4E9), Color(0xFFFFFFFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 75, top: 20),
            child: Text(
              'Parent',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: StreamBuilder(
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
          return ListView.builder(
            itemCount: documents.length,
            itemBuilder: (context, index) {
              final Map<String, dynamic> data = documents[index].data() as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.5,
                        blurRadius: 0.5,
                        offset: Offset(0, 1),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/blurlogo.png",
                            height: 100,
                            width: 150,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  data['parentName'],
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(data['phoneNumber'])
                              ],
                            ),
                          ),
                          SizedBox(width: 55,),
                          
                          IconButton(
  icon: Icon(Icons.delete_outline_outlined),
  color: Colors.black,
  onPressed: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Parent"),
          content: Text("Are you sure you want to delete this parent?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                FirebaseFirestore.instance
                    .collection('parentregister')
                    .doc(data['ParentId']) 
                    .delete()
                    .then((value) {
                  print("Parent deleted successfully!");
                }).catchError((error) {
                   print("Failed to delete parent: $error");
                });

                Navigator.of(context).pop();
              },
              child: Text("Delete"),
            ),
          ],
        );
      },
    );
  },
),

                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
