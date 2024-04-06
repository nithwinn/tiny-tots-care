import 'package:flutter/material.dart';

class Foodmenu extends StatefulWidget {
  const Foodmenu({super.key});

  @override
  State<Foodmenu> createState() => _FoodmenuState();
}

class _FoodmenuState extends State<Foodmenu> {
  @override
  Widget build(BuildContext context) {
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
                      ),
        SizedBox(width: 4,),
        dateWidget(
        title: "Tue\n2",
      ),
                      SizedBox(width: 4,),
      dateWidget(
        title: "Wed\n3",
      ),
                      SizedBox(width: 4,),
                      dateWidget(
      title: "Thu\n4",
    ),
                      SizedBox(width: 4,),
                      dateWidget(
      title: "Fri\n5",
    ),
                      SizedBox(width: 4,),
                      dateWidget(
      title: "Sat\n6",
    ),
                      SizedBox(width: 4,),
                      dateWidget(
                        title: "Sun\n7",
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Jan 1-Jan 7",style:TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,)
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.calendar_today),
                        color: Colors.black,
                        onPressed: () {

                        },
                      ),

                    ],


                  ),
                  Container(
                    padding: EdgeInsets.only(left: 12),
                    color: Color(0xFFD9D9D9),

                    child: Row(
                      children: [
                        Text("Monday,Jan 1",style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,) ,),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.black,
                          onPressed: () {

                          },
                        ),

                      ],
                    ),

                  ),
                  Container(

                   child:   Column(mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(left: 320),
                             child: IconButton(
                               icon: Icon(Icons.edit),
                               color: Colors.black,
                               onPressed: () {

                               },
                             ),
                           ),
                         ],
                       ),
                       RowTextWidget(
                         firstText: "BreakFast",
                         secondText: "Mango Juice\n pancakes",
                       ),
                       SizedBox(height: 16,),
                       RowTextWidget(
                         firstText: "Lunch",
                         secondText: "Chicken Biriyani\n salad",
                       ),
                       SizedBox(height: 16,),
                       RowTextWidget(
                         firstText: "Evening snack",
                         secondText: "Horlicks Biscuits",
                       ),

                       
                     ],
                   ),



                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.only(left: 12),
                    color: Color(0xFFD9D9D9),

                    child: Row(
                      children: [
                        Text("Monday,Jan 1",style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,) ,),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.edit),
                          color: Colors.black,
                          onPressed: () {

                          },
                        ),

                      ],
                    ),



                  ),
                  Container(

                    child:   Column(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 320),
                              child: IconButton(
                                icon: Icon(Icons.edit),
                                color: Colors.black,
                                onPressed: () {

                                },
                              ),
                            ),
                          ],
                        ),
                        RowTextWidget(
                          firstText: "BreakFast",
                          secondText: "Milk \n Bread Toast",
                        ),
                        SizedBox(height: 16,),
                        RowTextWidget(
                          firstText: "Lunch",
                          secondText: "Curd Rice\n salad",
                        ),
                        SizedBox(height: 16,),
                        RowTextWidget(
                          firstText: "Evening snack",
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
  final String firstText,secondText;

  const RowTextWidget({
    super.key,  required this.firstText, required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(firstText,style:TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,)),
        SizedBox(width: 80,),

        Text(secondText,style:TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,),
          textAlign: TextAlign.center,
        ) ],
    );
  }
}

class dateWidget extends StatelessWidget {
  final String title;
  const dateWidget({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 50,
      width: 50,
      // padding: EdgeInsets.all(18),
      color: Color(0xFFD9D9D9),
      child: Center(child: Text(title,style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,),textAlign: TextAlign.center),),
    );

  }
}