import 'package:flutter/material.dart';

class MystudentTask extends StatefulWidget {
  const MystudentTask({super.key});

  @override
  State<MystudentTask> createState() => _MystudentTaskState();
}

class _MystudentTaskState extends State<MystudentTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image(image: AssetImage("assets/360_F_201123699_GBrrMt3qbSgHK6maXU7StZd8jSDX7N3E 2.png"),),
        title: Text("Jeni \nfemale"),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 250,top: 50),
          child: Text("Daliy task",style: TextStyle(
            fontSize: 25,
          ),),
        ),
        SizedBox(height: 15,),
      Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(shape: BoxShape.rectangle,
        
         boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1.5,
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
            color: Color.fromARGB(255, 255, 253, 253)
           ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 255),
                child: Container(
                  height: 50,
                  width: 85,
                  decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(35)),
                  child: Center(
                    child: Text("upload",style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
          ),
      ),
      Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(shape: BoxShape.rectangle,
        
         boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1.5,
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
            color: Color.fromARGB(255, 255, 253, 253)
           ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 255),
                child: Container(
                  height: 50,
                  width: 85,
                  decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(35)),
                  child: Center(
                    child: Text("upload",style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
          ),
      ),
      Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(shape: BoxShape.rectangle,
        
         boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1.5,
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
            color: Color.fromARGB(255, 255, 253, 253)
           ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 255),
                child: Container(
                  height: 50,
                  width: 85,
                  decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(35)),
                  child: Center(
                    child: Text("upload",style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
            ],
          ),
          ),
      ),
      SizedBox(height: 25,),
      Padding(
        padding: const EdgeInsets.only(right: 250,),
        child: Text("Health Care",style: TextStyle(
              fontSize: 25,
            ),),
      ),
      Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(shape: BoxShape.rectangle,
        
         boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1.5,
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
            color: Color.fromARGB(255, 255, 253, 253)
           ),
          child: Row(
mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                      icon: Icon(Icons.add_box_outlined),
                      color: Colors.black,
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => Home()),
                        // );
                      },
                    ),
            ],
          ),
          ),
      ),
      ],),
    );
 
  }
}