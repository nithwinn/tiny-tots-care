import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/p.home.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFEE77F), Color(0xFFFFFFFF)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            leading: Image.asset(
              'assets/food1.png',
              height: 560,
              width: 560,
            ),
            title: Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Text(
                'FOOD',
                style: TextStyle(
                  color: Color(0xFFD38640),
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
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              SizedBox(height: 80),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE7D7CC),
                                Color(0xFFFFFFFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                            ),
                          ),
                          child: Image.asset(
                            "assets/rice.png",
                            width: 160,
                            height: 100,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            width: 390,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE7D7CC),
                                  Color(0xFFFFFFFF),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Food()),
                                );
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30.0, right: 20.0),
                                    child: Text(
                                      "Rice porridge",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "free/-",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF000000),
                                    ),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE7D7CC),
                                Color(0xFFFFFFFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                            ),
                          ),
                          child: Image.asset(
                            "assets/biriyani.png",
                            width: 160,
                            height: 100,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            width: 390,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE7D7CC),
                                  Color(0xFFFFFFFF),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                // Navigate to Food screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Food()),
                                );
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30.0, right: 20.0),
                                    child: Text(
                                      "Biriyani",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "100/-",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF000000),
                                    ),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE7D7CC),
                                Color(0xFFFFFFFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                            ),
                          ),
                          child: Image.asset(
                            "assets/fruits.png",
                            width: 160,
                            height: 100,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            width: 390,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFE7D7CC),
                                  Color(0xFFFFFFFF),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Food()),
                                );
                              },
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30.0, right: 20.0),
                                    child: Text(
                                      "Fruits",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "20/-",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF000000),
                                    ),
                                  )
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                textStyle: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 20.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.home),
                              color: Colors.black,
                              onPressed: () {},
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
                              onPressed: () {},
                            ),
                            Text("Profile"),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ]),
          ),
        ));
  }
}
