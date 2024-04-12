import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Doctors/dhome.dart';
import 'package:tiny_tots_care/Doctors/dhome2.dart';

class Editdr extends StatefulWidget {
  const Editdr({super.key});

  @override
  State<Editdr> createState() => _EditdrState();
}

class _EditdrState extends State<Editdr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
              Container(
                width: 430,
                height: 110,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF42879C)
                ),
              ),SizedBox(height: 30,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40,right: 50),
                    child: Text("Visiting Time",style: TextStyle(fontSize: 20),),
                  ),
        
                  SizedBox(width: 3,),
                  Icon(Icons.edit)
                ],
              ),
        
               SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 30,right: 30 ),
                child: TextField(
                 
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),),
              ), 
              SizedBox(height: 30,),
        
              
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40,right: 50),
                    child: Text("Qualification",style: TextStyle(fontSize: 20),),
                  ),
        
                  SizedBox(width: 3,),
                  Icon(Icons.edit)
                ],
              ),
        
               SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 30,right: 30 ),
                child: TextField(
                 
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),),
              ), 
              SizedBox(height: 22,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40,right: 50),
                    child: Text("Specialization",style: TextStyle(fontSize: 20),),
                  ),
        
                  SizedBox(width: 3,),
                  Icon(Icons.edit)
                ],
              ),
        
               SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 30,right: 30 ),
                child: TextField(maxLines: 4,
                 
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),),
              ), 
              
               
        
              SizedBox(height: 22,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40,right: 50),
                    child: Text("Home Address",style: TextStyle(fontSize: 20),),
                  ),
        
                  SizedBox(width: 3,),
                  Icon(Icons.edit)
                ],
              ),
        
               SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 30,right: 30 ),
                child: TextField(maxLines: 3,
                 
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),),
              ), 
        
              SizedBox(height: 22,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40,right: 50),
                    child: Text("Home Address",style: TextStyle(fontSize: 20),),
                  ),
        
                  SizedBox(width: 3,),
                  Icon(Icons.edit)
                ],
              ),
        
               SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(left: 30,right: 30 ),
                child: TextField(maxLines: 3,
                 
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),),
              ), 
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: (){}, child: Text("Update",style: TextStyle(fontSize: 20),)),
              ),

          ],
        ),
      ),
    );
  }
}