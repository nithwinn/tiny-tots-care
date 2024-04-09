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
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
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
            title: Padding(
              padding: const EdgeInsets.only(left: 70,top: 20),
              child: Text(
                'DAY CARE',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('daycare').snapshots(),
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
              return Card(
                // elevation: 5,
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(data['preschoolName'] ?? 'No Name',style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pre school Address: ${data['preschoolAddress'] ?? 'Unknown'}'),
                      Text('Email: ${data['email'] ?? 'Unknown'}'), 
                       Text('Phone number: ${data['phone'] ?? 'Unknown'}'),
                   
                    ],
                  ), trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                     
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          String activityId = documents[index].id;
                          FirebaseFirestore.instance
                              .collection('daycare')
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
                ),
              );
            },
          );
        },
      ),
    );
  }

}