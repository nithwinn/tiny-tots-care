import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tiny_tots_care/Parent/Acoount.dart';
import 'package:tiny_tots_care/Parent/parent_registration2.dart';

class DaycareSearch extends StatefulWidget {
  const DaycareSearch({Key? key}) : super(key: key);

  @override
  State<DaycareSearch> createState() => _DaycareSearchState();
}

class _DaycareSearchState extends State<DaycareSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search Daycare",
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
          ),
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: (){
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Account()),
                    );
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1.5,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                  color: const Color(0xFFC7E7E7),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 70,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        "Little Kids",
                        style: TextStyle(fontSize: 35),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 3,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
         Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1.5,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
                color: const Color(0xFFC7E7E7),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 70,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      "Scared",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 3,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
            ),
         ), 
         Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1.5,
                    blurRadius: 2,
                    offset: Offset(0, 1),
                  ),
                ],
                color: const Color(0xFFC7E7E7),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 70,
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Text(
                      "Tiny Care",
                      style: TextStyle(fontSize: 35),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 3,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                  ),
                ],
              ),
            ),
         ),
        ],
      ),
    );
  }
}
