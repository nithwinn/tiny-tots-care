import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Babysitters/Babysitter_profile.dart';

class BabysitterEdit extends StatefulWidget {
  const BabysitterEdit({super.key});

  @override
  State<BabysitterEdit> createState() => _BabysitterEditState();
}

class _BabysitterEditState extends State<BabysitterEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        leading: CircleAvatar(
  radius: 30,
  backgroundColor: Colors.transparent, 
  child: Padding(
    padding: const EdgeInsets.all(2.0),
    child: ClipOval(
      child: Image.asset(
        'assets/b1.png',
        fit: BoxFit.fitHeight,
      ),
    ),
  ),
),
        title: const Text(
          'Dayana\nFemale',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Address", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 5,),
                  TextFormField(
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text("Occupation", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 5,),
                  TextFormField(
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                   SizedBox(height: 15,),
                  Text("Phone Number", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 5,),
                  TextFormField(
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                   SizedBox(height: 15,),
                  Text("Whatsaap Number", style: TextStyle(color: Colors.black)),
                  SizedBox(height: 5,),
                  TextFormField(
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 180,),

              ElevatedButton(onPressed: (){
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BabySitterProfile(),
                  ),
                );
              }, child: Text("Update",style: TextStyle(fontSize: 20),)),

                ]
        ),
      )
    );
  }
}