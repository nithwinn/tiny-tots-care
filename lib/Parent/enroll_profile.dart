import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/edit_parent.dart';

class ParentProfile extends StatefulWidget {
  const ParentProfile({super.key});

  @override
  State<ParentProfile> createState() => _ParentProfileState();
}

class _ParentProfileState extends State<ParentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
            Stack(
              children:[ Container(
                width: 430,
                height: 160,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF42879C)
                ),
                
              ),
               Padding(
                 padding: const EdgeInsets.only(top: 70,left: 300),
                 child: 
                     Row(
                       children: [
                         Container(
                          height: 25,
                          width: 35,
                          // color: Colors.white,
                         child: Text("Edit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                         IconButton(
                      icon: Icon(Icons.edit),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Editparent()),
                        );
                      },
                    ),
                       ],
                     ),
                     
                     
                     
                  
               ),

         ] ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 130,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/child.png',),fit: BoxFit.cover),
                      color: Colors.amber,
                    ),
                  ),
                  Text("Jeni",style: TextStyle(
                    fontSize: 25
                  ),)
                ],
              ),
            ),
            SizedBox(height: 65,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Icon(Icons.home,size: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(":",style: TextStyle(fontSize: 30,),),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("Palaparamb house,\nMAlappuram,\npin:673432",style: TextStyle(fontSize: 20,),),
                ),
              ],
            ),


            SizedBox(height: 25,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text("DOB",style: TextStyle(fontSize: 20,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text(":",style: TextStyle(fontSize: 30,),),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text("06/12/2021",style: TextStyle(fontSize: 20,),),
                ),
              ],
            ),

             SizedBox(height: 45,),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text("Parent\nOccupation",style: TextStyle(fontSize: 20,),),
                  ),
                  SizedBox(width: 20,),
                  Text(":",style: TextStyle(fontSize: 30,),),
                   Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text("Doctor",style: TextStyle(fontSize: 30,),),
                  ),
                ],
              ),
            )

        ],
      ),
    );
  }
}
