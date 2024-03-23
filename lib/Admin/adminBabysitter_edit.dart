import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/adminBabysitter_edit2.dart';

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
        body: Container(
            margin: EdgeInsets.all(10),
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
                              "assets/b1.png",
                              height: 100,
                              width: 150,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Dayana",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 15,),
                            IconButton(
                              icon: Icon(Icons.edit),
                              color: Colors.grey,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>AdminBabysitterEdit2()),
                                );
                              },
                            ),

                            IconButton(
                              icon: Icon(Icons.delete_outline_outlined),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AdminBabysitterEdit2()),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),]
            )
        )
    );
  }
}
