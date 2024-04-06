import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Parent/activity.dart';
import 'package:tiny_tots_care/Parent/child_profile.dart';
import 'Parent_profile.dart';
import 'p.home.dart';

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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 350,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE7D7CC),
                                Color(0xFFFFFFFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(35)
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/rice.png",
                                width: 160,
                                height: 100,
                              ),
                              Column(
                                children: [
                                  Text(
                                        "Rice porridge",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF000000),
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
                            ],
                          ),
                        ),
                      ),
                    ]
                  ),
                 Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 350,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE7D7CC),
                                Color(0xFFFFFFFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(35)
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/biriyani.png",
                                width: 160,
                                height: 100,
                              ),
                              Column(
                                children: [
                                  Text(
                                        "Biriyani",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF000000),
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
                            ],
                          ),
                        ),
                      ),
                    ]
                  ), 
                   Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 350,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFFE7D7CC),
                                Color(0xFFFFFFFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(35)
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/fruits.png",
                                width: 160,
                                height: 100,
                              ),
                              Column(
                                children: [
                                  Text(
                                        "Fruits",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF000000),
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
                            ],
                          ),
                        ),
                      ),
                    ]
                  ), 
                ],
              ),
        SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 20.0),
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
                        SizedBox(
                            width:
                                50.0), 
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.add_circle),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Activity1()),
                          );
                              },
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
                        SizedBox(
                            width:
                                50.0), 
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.person),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ParentProfile()),
                                );
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
            
            ),
          ),
        );
  }
}
