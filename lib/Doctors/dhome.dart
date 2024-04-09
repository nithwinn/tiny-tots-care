import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tiny_tots_care/Doctors/dhome2.dart';

class Dhome extends StatefulWidget {
  const Dhome({Key? key});

  @override
  State<Dhome> createState() => _DhomeState();
}

class _DhomeState extends State<Dhome> {
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
              child: Image.asset(
                'assets/logo.png',
                height: 50,
                width: 50,
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
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dhome2()),
                        );
                      },
                      child: Container(
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
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dr.${data['name']}",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "VisitingTime:${data['visiting time']}",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 55),
                            Container(
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color(0xFF98B7D3),
                                          foregroundColor: Colors.white,
                                          padding: const EdgeInsets.all(6.0),
                                          textStyle: const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Dhome()),
                                          );
                                        },
                                        child: Center(
                                          child: Text("Approve"),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color(0xFFF14668),
                                          foregroundColor: Colors.white,
                                          padding: const EdgeInsets.all(6.0),
                                          textStyle: const TextStyle(fontSize: 15),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Dhome()),
                                          );
                                        },
                                        child: Center(
                                          child: Text("Reject"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.all(55.0),
                                  //   child: Text(
                                  //     "Name: ${data['name']}\nDate: ${data['date']}",
                                  //     style: TextStyle(fontSize: 15),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Divider(
                              thickness: 0.5,
                              color: Colors.black,
                              height: 0.5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  //   SizedBox(
                  //     height: 300,
                  //   ),
                  //   Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       Column(
                  //         children: [
                  //           IconButton(
                  //             icon: Icon(Icons.home),
                  //             color: Colors.black,
                  //             onPressed: () {
                  //               Navigator.push(
                  //                 context,
                  //                 MaterialPageRoute(builder: (context) => Dhome()),
                  //               );
                  //             },
                  //           ),
                  //           Text("Home"),
                  //         ],
                  //       ),
                  //       Column(
                  //         children: [
                  //           IconButton(
                  //             icon: Icon(Icons.person),
                  //             color: Colors.black,
                  //             onPressed: () {
                  //               // Navigator.push(
                  //               //   context,
                  //               //   MaterialPageRoute(
                  //               //       builder: (context) => Dhome2()),
                  //               // );
                  //             },
                  //           ),
                  //           Text("Profile"),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ],
                  ]
                ),
              );
            },
          );
        },
      ),
    );
  }
}
