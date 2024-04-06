import 'package:flutter/material.dart';

class ChildrenView extends StatefulWidget {
  const ChildrenView({super.key});

  @override
  State<ChildrenView> createState() => _ChildrenViewState();
}

class _ChildrenViewState extends State<ChildrenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFF750A64),
                 borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(55.0),
                              bottomLeft: Radius.circular(55.0),
                            ),
                ),
            child: Padding(
              padding: const EdgeInsets.only(top: 55),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Jeni",
                      style: TextStyle(color: Colors.white, fontSize: 45),
                    ),
                    Text(
                      "Child",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150,top: 55),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 5, right: 70),
                child: Image.asset(
                    'assets/c1.png'),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Health : Normal",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Blood  Group : A+",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 350,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}