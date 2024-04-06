import 'package:flutter/material.dart';

class Forgottend extends StatefulWidget {
  const Forgottend({super.key});

  @override
  State<Forgottend> createState() => _ForgottendState();
}

class _ForgottendState extends State<Forgottend> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Center(
                    child: Column(
                        children: [
                          Image.asset(
                            "assets/logo.png",
                            width: 100,
                            height: 120,
                          ),
                          SizedBox(height: 10.0,),
                          Padding(
                            padding: const EdgeInsets.only(right: 280.0),
                            child: Text("New Password", style: TextStyle(color: Colors.black)),
                          ),
                          SizedBox(height: 2.0),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(right: 280.0),
                            child: Text("Confirm Password", style: TextStyle(color: Colors.black)),
                          ),
                          SizedBox(height: 2.0),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Confirm Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 50,),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Stack(
                              children: <Widget>[
                                Positioned.fill(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.all(6.0),
                                    textStyle: const TextStyle(fontSize: 25),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Forgottend()),
                                    );
                                  },
                                  child: Center(
                                    child: Text(
                                      "Done",
                                    ),
                                  ),
                                ),

                              ],
                            ),

                          ),
                        ]
                    ),
                  )
              )
            ]
        )
    );
  }
}
