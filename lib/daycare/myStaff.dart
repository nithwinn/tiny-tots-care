import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tiny_tots_care/daycare/dayanastf.dart';
import 'package:tiny_tots_care/daycare/submit.dart';

class MyStaFF extends StatefulWidget {
  const MyStaFF({Key? key});

  @override
  State<MyStaFF> createState() => _MyStaFFState();
}

class _MyStaFFState extends State<MyStaFF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    "My Staff",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(right: 190),
              child: Text(
                "No Of Staffs",
                style: TextStyle(fontSize: 35),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            SizedBox(height: 50),
            StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('staffregister')
                  .snapshots(),
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
                  shrinkWrap: true,
                  itemCount: documents.length,
                  itemBuilder: (context, index) {
                    final Map<String, dynamic> data =
                        documents[index].data() as Map<String, dynamic>;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1.5,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                          color: Color.fromARGB(255, 152, 193, 222),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 70,
                        width: 350,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                data['staffName'],
                                style: TextStyle(color: Colors.white,fontSize: 35),
                              ),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                // backgroundColor: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Home_day(StaffId: data['StaffId']),
                                  ),
                                );
                              },
                              child: Text("View",style: TextStyle(color: Color.fromARGB(255, 55, 194, 59)),),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 50),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StaffRegister(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0E6174),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 50,
                width: 300,
                child: Center(
                  child: Text(
                    "Add staff",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
