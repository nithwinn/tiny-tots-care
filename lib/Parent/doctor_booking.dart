import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/doctor_booking3.dart';

import '../DomainAmin.dart';
import 'Parent_profile.dart';
import 'p.home.dart';

class DoctorBooking extends StatefulWidget {
  const DoctorBooking({super.key});

  @override
  State<DoctorBooking> createState() => _DoctorBookingState();
}

class _DoctorBookingState extends State<DoctorBooking> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:PreferredSize(
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
        leading: Image.asset(
          'assets/logo.png',
          height: 50,
          width: 50,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Text(
            'Booking',
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(

                          padding: EdgeInsets.symmetric(
                            horizontal: 12,vertical: 17
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5), // Shadow color
                                spreadRadius: 5, // Spread radius
                                blurRadius: 4, // Blur radius
                                offset: Offset(0, 3),
                                // Offset in x and y directions
                              ),
                            ],
                            color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset("assets/doctor1.png",height: 100,
                                    width: 150,),


                                ],
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dr.sarah", style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),),
                                  Text("Visiting Time\n11:30am-3:30pm",
    style: TextStyle(
    fontSize: 20,

    color: Colors.black,),
                                  )]
                              ),

                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Text("Select a Date",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,),),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(7),


                          width: MediaQuery.of(context).size.width,
                          height: 33,
                          color: Color(0xFF9BBAD5),
                          child: Row(
                            children: [
                              Text("Please Select Date",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,),),
                              Spacer(),
                              Text("OK",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,)
                            ,  ),
                            ],
                          ),
                        ),
                        Column(crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5), // Shadow color
                                    spreadRadius: 5, // Spread radius
                                    blurRadius: 4, // Blur radius
                                    offset: Offset(0, 3), // Offset in x and y directions
                                  ),
                                ],
                              ),
                              child: DataTable(
                                columns: const <DataColumn>[
                                  DataColumn(
                                    label: Text('September'),
                                  ),
                                  DataColumn(
                                    label: Text('17'),
                                  ),
                                  DataColumn(
                                    label: Text('2022'),
                                  ),
                                ],
                                rows: <DataRow>[
                                  DataRow(cells: <DataCell>[
                                    DataCell(Text('october')),
                                    DataCell(Text('18')),
                                    DataCell(Text('2023')),
                                  ]),
                                  DataRow(cells: <DataCell>[
                                    DataCell(Text('november')),
                                    DataCell(Text('19')),
                                    DataCell(Text('2023')),
                                  ]),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),

                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Name:",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                              ),),
                              SizedBox(
                                height: 7,
                              ),

                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Age:",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),





                              )],
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(

              style: TextButton.styleFrom(
                backgroundColor: Color(0xFF98B7D3),

                textStyle: const TextStyle(fontSize: 25),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorBooking3()),
                );
              },
              child: Center(
                child:  Text("Book Appointment",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,)
                  ,  ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20.0),
            child: Row(
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      color: Colors.black,
                      onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Phome()),
                      );},
                    ),
                    Text("Home"),
                  ],
                ),
                SizedBox(
                    width:
                    50.0),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    Text("Activity"),
                  ],
                ),
                SizedBox(
                    width:
                    50.0),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.child_care),
                      color: Colors.black,
                      onPressed: () {},
                    ),
                    Text("My child"),
                  ],
                ),
                SizedBox(
                    width:
                    50.0),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.person),
                      color: Colors.black,
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => ParentProfile()),
                        // );
                      },
                    ),
                    Text("Profile"),
                  ],
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}
