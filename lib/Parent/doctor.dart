import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/activity.dart';
import 'package:tiny_tots_care/Parent/child_profile.dart';
import 'package:tiny_tots_care/a/childprofile.dart';

import 'Parent_profile.dart';
import 'doctor_booking.dart';
import 'doctor_booking2.dart';
import 'p.home.dart';


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
      body: Column(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
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
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 4, // Blur radius
                        offset: Offset(0, 3),
                        // Offset in x and y directions
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Doctorcardwidget(
                        subtittle:
                            " Tirur City Hospital\n Trikandiyoor Rd\n,near Bus stand\n 04563218953",
                        imagename: "assets/doctor1.png",
                        name: "DR.Sarah",
                        book: "Book",
                        call: "call",
                        calltap: () {},
                        booktap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorBooking()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5), // Shadow color
                          spreadRadius: 5, // Spread radius
                          blurRadius: 4, // Blur radius
                          offset: Offset(0, 3),
                          // Offset in x and y directions
                        ),
                      ],
                    ),
                    child: Doctorcardwidget(
                      book: "Book",
                      call: "call",
                      calltap: () {},
                      booktap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) => DoctorBooking2()),
                        );
                      },
                      subtittle: " M.B. Hospital\nmalappuram\n04832345678",
                      imagename: "assets/doctor2.png",
                      name: "DR.Antony",
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75, left: 20.0),
            child: Row(
              children: [
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Phome()),
                        );
                      },
                    ),
                    Text("Home"),
                  ],
                ),
                SizedBox(width: 50.0),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      color: Colors.black,
                      onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Activity1()),
                        );
                      },
                    ),
                    Text("Activity"),
                  ],
                ),
                SizedBox(width: 50.0),
                Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.child_care),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BabyProfile()),
                        );
                      },
                    ),
                    Text("My child"),
                  ],
                ),
                SizedBox(width: 50.0),
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

class Doctorcardwidget extends StatelessWidget {
  final String? name;
  final String imagename;
  final String? subtittle, book, call;
  final void Function()? booktap, calltap;
  const Doctorcardwidget({
    super.key,
    this.name,
    required this.imagename,
    this.subtittle,
    this.book,
    this.call,
    this.booktap,
    this.calltap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,

        children: [
          Image.asset(
            imagename ?? "",
            height: 100,
            width: 150,
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name ?? "",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "Pediatricians",
                style: TextStyle(
                  fontSize: 25,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                subtittle ?? "",
                style: TextStyle(
                  fontSize: 25,
                  // fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ],
      ),
      Row(
        children: [
          TextButtonWidget(
            ontap: booktap,
            title: book ?? "",
          ),
          SizedBox(
            width: 20,
          ),
          TextButtonWidget(
            title: call ?? "",
            ontap: calltap,
          )
        ],
      )
    ]);
  }
}

class TextButtonWidget extends StatelessWidget {
  final String title;
  final void Function()? ontap;
  const TextButtonWidget({
    super.key,
    required this.title,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          // width: ,/
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 17),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xFF468FD0),
          ),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 25,
                // fontWeight: FontWeight.bold,
                color: Colors.black),
          )),
    );
  }
}
