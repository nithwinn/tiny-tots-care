import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/adminBabysitter_edit2.dart';
import 'package:tiny_tots_care/DomainAmin.dart';

class AdminBabysitterEdit extends StatefulWidget {
  const AdminBabysitterEdit({super.key});

  @override
  State<AdminBabysitterEdit> createState() => _AdminBabysitterEditState();
}

class _AdminBabysitterEditState extends State<AdminBabysitterEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFFFB94), Color(0xFFFFFFFF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 70,top: 20),
              child: Text(
                'Baby Sitters',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
       body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('babysitters').snapshots(),
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
                                  data['name'],
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  data['idproof']
                                  ),
                                  Text( data['qualification'])
                              ],
                            ),
                            
                          ),
                          SizedBox(width: 55,),
                          
                          IconButton(
                            icon: Icon(Icons.delete_outline_outlined),
                            color: Colors.black,
                            onPressed: () {
                              String activityId = documents[index].id;
                          FirebaseFirestore.instance
                              .collection('babysitters')
                              .doc(activityId)
                              .delete()
                              .then((_) {
                            print('Document successfully deleted!');
                          }).catchError((error) {
                            print('Error deleting document: $error');
                          });
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
