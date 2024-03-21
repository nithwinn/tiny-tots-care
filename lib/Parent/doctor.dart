import 'package:flutter/material.dart';

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), // Set the height of the AppBar
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
          leading: Image.asset(
            'assets/doctor.png',
            height: 50, // Adjusted height
            width: 50, // Adjusted width
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Text(
              'DOCTOR',
              style: TextStyle(
                color: Color(0xFF87ACCF),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(35.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100,left: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/doctor1.png",
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30,top: 50),
                            child: Text(
                              "DR.SARAH",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,),
                            child: Text(
                              "pediatrician",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 15.0,),
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: Text("Tirur City Hospital"
                          //       ",Trikandiyoor Rd"
                          //       ",near Busstand,04563218953"),
                          // )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                height: 250,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(35.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100,left: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/doctor2.png",
                        height: 100,
                        width: 150,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30,top: 50),
                            child: Text(
                              "DR.Antony",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,),
                            child: Text(
                              "pediatrician",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 15.0,),
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: Text("Tirur City Hospital"
                          //       ",Trikandiyoor Rd"
                          //       ",near Busstand,04563218953"),
                          // )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ],
              // floatingActionButton: Padding(
              //   padding: const EdgeInsets.only(top: 805, left: 25.0),
              //   child: Row(
              //     children: [
              //       Column(
              //         children: [
              //           IconButton(
              //             icon: Icon(Icons.home),
              //             color: Colors.black,
              //             onPressed: () {},
              //           ),
              //           Text("Home"),
              //         ],
              //       ),
              //       SizedBox(width: 55.0),
              //       Column(
              //         children: [
              //           IconButton(
              //             icon: Icon(Icons.add_circle),
              //             color: Colors.black,
              //             onPressed: () {},
              //           ),
              //           Text("Activity"),
              //         ],
              //       ),
              //       SizedBox(width: 55.0),
              //       Column(
              //         children: [
              //           IconButton(
              //             icon: Icon(Icons.child_care),
              //             color: Colors.black,
              //             onPressed: () {},
              //           ),
              //           Text("My child"),
              //         ],
              //       ),
              //       SizedBox(width: 55.0),
              //       Column(
              //         children: [
              //           IconButton(
              //             icon: Icon(Icons.person),
              //             color: Colors.black,
              //             onPressed: () {},
              //           ),
              //           Text("Profile"),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
        ),

          ),
        ),

    );
  }
}
