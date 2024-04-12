import 'package:flutter/material.dart';

class Foodmenu extends StatefulWidget {
  const Foodmenu({Key? key});

  @override
  State<Foodmenu> createState() => _FoodmenuState();
}

class _FoodmenuState extends State<Foodmenu> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(18),
              child: Column(
                children: [
                  Row(
                    children: [
                      dateWidget(
                        title: "Mon\n1",
                        size: screenWidth * 0.1,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      dateWidget(
                        title: "Tue\n2",
                        size: screenWidth * 0.1,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      dateWidget(
                        title: "Wed\n3",
                        size: screenWidth * 0.1,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      dateWidget(
                        title: "Thu\n4",
                        size: screenWidth * 0.1,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      dateWidget(
                        title: "Fri\n5",
                        size: screenWidth * 0.1,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      dateWidget(
                        title: "Sat\n6",
                        size: screenWidth * 0.1,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      dateWidget(
                        title: "Sun\n7",
                        size: screenWidth * 0.1,
                      ),
                    ],
                  ),
                  SizedBox(height: screenWidth * 0.02),
                  Row(
                    children: [
                      Text(
                        "Jan 1-Jan 7",
                        style: TextStyle(
                          fontSize: screenWidth * 0.032,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.calendar_today),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: screenWidth * 0.04),
                    color: Color(0xFFD9D9D9),
                    child: Row(
                      children: [
                        Text(
                          "Monday, Jan 1",
                          style: TextStyle(
                            fontSize: screenWidth * 0.032,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth * 0.78),
                              child: IconButton(
                                icon: Icon(Icons.edit),
                                color: Colors.black,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        RowTextWidget(
                          firstText: "BreakFast:",
                          secondText: "Mango Juice\n pancakes",
                        ),
                        SizedBox(height: screenWidth * 0.04),
                        RowTextWidget(
                          firstText: "Lunch:",
                          secondText: "Chicken Biriyani\n salad",
                        ),
                        SizedBox(height: screenWidth * 0.04),
                        RowTextWidget(
                          firstText: "Evening snack:",
                          secondText: "Horlicks Biscuits",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.08),
                  Container(
                    padding: EdgeInsets.only(left: screenWidth * 0.04),
                    color: Color(0xFFD9D9D9),
                    child: Row(
                      children: [
                        Text(
                          "Tuesday, Jan 1",
                          style: TextStyle(
                            fontSize: screenWidth * 0.032,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: screenWidth * 0.78),
                              child: IconButton(
                                icon: Icon(Icons.edit),
                                color: Colors.black,
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                         RowTextWidget(
                           firstText: "BreakFast:",
                           secondText: "Milk \n Bread Toast",
                         ),
      SizedBox(height: screenWidth * 0.04),
      RowTextWidget(
        firstText: "Lunch:",
        secondText: "Curd Rice\n salad",
      ),
      SizedBox(height: screenWidth * 0.04),
      RowTextWidget(
        firstText: "Evening snack:",
        secondText: "Boost Banana",
      ),
    ],
  ),
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

class RowTextWidget extends StatelessWidget {
  final String firstText, secondText;

  const RowTextWidget({
    Key? key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth * 0.3,
          child: Text(
            firstText,
            style: TextStyle(
              fontSize: screenWidth * 0.032,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        SizedBox(width: screenWidth * 0.1),
        Container(
          width: screenWidth * 0.5,
          child: Text(
            secondText,
            style: TextStyle(
              fontSize: screenWidth * 0.032,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class dateWidget extends StatelessWidget {
  final String title;
  final double size;

  const dateWidget({
    Key? key,
    required this.title,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: size,
        width: size,
        color: Color(0xFFD9D9D9),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: size * 0.32,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 9, 9, 9),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
