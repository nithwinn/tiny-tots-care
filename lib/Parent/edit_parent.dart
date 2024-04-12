import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Editparent extends StatefulWidget {
  const Editparent({super.key});

  @override
  State<Editparent> createState() => _EditparentState();
}

class _EditparentState extends State<Editparent> {
 
File? _image;
  @override
  void initState() {
    super.initState();
    _image = null;
  }

  Future<void> _getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print("No image selected.");
      }
    });
  }

  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          
          children: [
        
            Container(
              width: 430,
              height: 130,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF42879C)
              ),
            ),
        
            
            Padding(
              padding: EdgeInsets.only(top: 20,right: 280),
              child: Text("Address",style: TextStyle(
                fontSize: 20
              ),),
            ),
          
            Padding(
              padding: EdgeInsets.only(left: 30,right: 30 ),
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),),
            ),
        
            SizedBox(height: 4,),
        
             
            Padding(
              padding: EdgeInsets.only(top: 15,right: 300),
              child: Text("DOB",style: TextStyle(
                fontSize: 20
              ),),
            ),
            
            Padding(
              padding: EdgeInsets.only(left: 30,right: 30 ),
              child: TextField(
               
                decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),),
            ),
        
            
            
        
             
            Padding(
              padding: EdgeInsets.only(top: 20,right: 180),
              child: Text("Parent's Occupation",style: TextStyle(
                fontSize: 20
              ),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left: 30,right: 30 ),
              child: TextField(
               
                decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),),
            ),
            
             
            Padding(
              padding: EdgeInsets.only(top: 30,right: 290),
              child: Text("Photo",style: TextStyle(
                fontSize: 20
              ),),
            ),
            SizedBox(height: 10,),
            // Padding(
            //   padding: EdgeInsets.only(left: 30,right: 30 ),
            //   child: TextField(
               
            //     decoration: InputDecoration(
            //       suffixIcon: Icon(Icons.edit_attributes_rounded),
            //     border: OutlineInputBorder(),
            //   ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Container(         
                width: 500,
                height: 63,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                  border: Border.all(),
                  
                ),
              
                  child: InkWell(
                  onTap: _getImage,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 300),
                    child: _image == null
                        ? Icon(Icons.edit_note_outlined)
                        : Image.file(_image!, height: 100, width: 100),
                  ),
                ),
                
              ),
            ),
        
            SizedBox(height: 50,),
            ElevatedButton(
              onPressed: (){}, child: Text("Update")),
        
                SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75, left: 20.0,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Column(
                      children: [
                        IconButton(
                          icon: Icon(Icons.home),
                          color: Colors.black,
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Phome()),
                            // );
                          },
                        ),
                        Text("Home"),
                      ],
                    ),
                   
                    SizedBox(width: 30.0),
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
              ),
        
           
          ],
        ),
      ),
    );
  }
}