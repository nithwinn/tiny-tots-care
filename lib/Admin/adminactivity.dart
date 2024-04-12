import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/addactivity.dart';



class Activity extends StatefulWidget {
  const Activity({Key? key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
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
            padding: const EdgeInsets.only(left: 75, top: 20),
            child: Text(
              'Activity',
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
        stream: FirebaseFirestore.instance.collection('activity').snapshots(),
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
              return Card(
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: ListTile(
                  title: Text(data['name'] ?? 'No Name'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Time: ${data['time'] ?? 'Unknown'}'),
                      Text('Activity: ${data['activity'] ?? 'Unknown'}'),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          String activityId = documents[index].id;
                          showDialog(
                            context: context,
                            builder: (context) {
                              TextEditingController nameController =
                                  TextEditingController(text: data['name']);
                              TextEditingController timeController =
                                  TextEditingController(text: data['time']);
                              TextEditingController activityController =
                                  TextEditingController(text: data['activity']);
                              return AlertDialog(
                                title: Text('Edit Activity'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextFormField(
                                      controller: nameController,
                                      decoration:
                                          InputDecoration(labelText: 'Name'),
                                    ),
                                    TextFormField(
                                      controller: timeController,
                                      decoration:
                                          InputDecoration(labelText: 'Time'),
                                    ),
                                    TextFormField(
                                      controller: activityController,
                                      decoration: InputDecoration(
                                          labelText: 'Activity'),
                                    ),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      FirebaseFirestore.instance
                                          .collection('activity')
                                          .doc(activityId)
                                          .update({
                                        'name': nameController.text,
                                        'time': timeController.text,
                                        'activity': activityController.text,
                                      }).then((_) {
                                        print('Document successfully updated!');
                                        Navigator.pop(context); 
                                      }).catchError((error) {
                                        print(
                                            'Error updating document: $error');
                                      });
                                    },
                                    child: Text('Save'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          String activityId = documents[index].id;
                          FirebaseFirestore.instance
                              .collection('activity')
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Addactivity(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
