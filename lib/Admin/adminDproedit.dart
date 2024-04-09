import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiny_tots_care/Admin/adminDproedit1.dart';
import 'package:tiny_tots_care/DomainAmin.dart';

class AdminDoctor extends StatefulWidget {
  const AdminDoctor({Key? key}) : super(key: key);

  @override
  State<AdminDoctor> createState() => _AdminDoctorState();
}

class _AdminDoctorState extends State<AdminDoctor> {
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
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 75, top: 20),
            child: Text(
              'Doctor',
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
              final Map<String, dynamic> data =
                  documents[index].data() as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 1,
                      ),
                      decoration: BoxDecoration(
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
                                "assets/doctor12.png",
                                height: 100,
                                width: 150,
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      data['name'],
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(data['specialization']),
                                    Text(data['officeaddress'])
                                  ],
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete_outline_outlined),
                            color: Colors.black,
                            onPressed: () {
                              String activityId = documents[index].id;
                          FirebaseFirestore.instance
                              .collection('doctors')
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
                    SizedBox(height: 25),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     shape: BoxShape.rectangle,
                    //     borderRadius: BorderRadius.circular(55),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.grey.withOpacity(0.5),
                    //         spreadRadius: 1.5,
                    //         blurRadius: 1,
                    //         offset: Offset(0, 1),
                    //       ),
                    //     ],
                    //     color: Color.fromARGB(255, 255, 253, 253),
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       Column(
                    //         children: [
                    //           Padding(
                    //             padding: const EdgeInsets.all(15.0),
                    //             child: Text(
                    //               "Name: Jenifer",
                    //               style: TextStyle(fontSize: 15),
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //       SizedBox(width: 35),
                    //       Row(
                    //         crossAxisAlignment: CrossAxisAlignment.end,
                    //         children: [
                    //           Column(
                    //             children: [
                    //               TextButton(
                    //                 style: TextButton.styleFrom(
                    //                   backgroundColor: Color.fromARGB(
                    //                       255, 30, 227, 19),
                    //                   foregroundColor: Colors.white,
                    //                   padding: const EdgeInsets.all(6.0),
                    //                   textStyle:
                    //                       const TextStyle(fontSize: 15),
                    //                 ),
                    //                 onPressed: () {
                    //                   // Perform accept operation here
                    //                 },
                    //                 child: Text("Accept"),
                    //               ),
                    //               SizedBox(height: 10),
                    //               TextButton(
                    //                 style: TextButton.styleFrom(
                    //                   backgroundColor: Color(0xFFF14668),
                    //                   foregroundColor: Colors.white,
                    //                   padding: const EdgeInsets.all(6.0),
                    //                   textStyle:
                    //                       const TextStyle(fontSize: 15),
                    //                 ),
                    //                 onPressed: () {
                    //                   // Perform reject operation here
                    //                 },
                    //                 child: Text("Reject"),
                    //               ),
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                   
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
