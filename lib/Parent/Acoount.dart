import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tiny_tots_care/Parent/p.home.dart';
import 'package:tiny_tots_care/Parent/p.home.dart';
import 'package:tiny_tots_care/Parent/parent_registration2.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        toolbarHeight: 50,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.fill,
          ),
        ),
        title: const Text(
          'Little kids',
          style: TextStyle(
            color: Color.fromARGB(255, 2, 2, 2),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Phome()),
                      );
                },
                child: Container(
                  height: 70,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(child: Text("Already have an account")),
                ),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Parentregistration()),
                      );
                },
                 child: Container(
                height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(child: Text("Dosent have an account")),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}