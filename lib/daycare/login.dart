// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class Dcarelogin extends StatefulWidget {
//   const Dcarelogin({super.key});

//   @override
//   State<Dcarelogin> createState() => _DcareloginState();
// }

// class _DcareloginState extends State<Dcarelogin> {
//   bool passwordvisible=true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(top: 100, left: 25),
//               child: Container(
//                 child: Image.asset('assets/TinyTots Care.png'),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 120,left: 25),
//               child: Text(
//                 'Welcome',
//                 style: TextStyle(
//                   fontFamily: 'Irish Grover',
//                   fontSize: 40,
//                   fontWeight: FontWeight.w400,
//                   height: 1.209,
//                 ),
//               ),
//             ),
//             SizedBox(height: 70,),
//             TextField(
//               decoration: InputDecoration(
//                 border:OutlineInputBorder(),
//                 hintText: "Username"
//               ),
//             ),
//              SizedBox(height: 70,),
//             TextField(obscureText: true,
//               decoration: InputDecoration(
//                 border:OutlineInputBorder(),
//                 hintText: "password",
//                 suffixIcon: IconButton(icon: Icon(
//                   passwordvisible ? Icons.visibility
//                   :Icons.visibility_off
//                 ),
//                 onPressed: (){
//                    setState(
//                            () {
//                              passwordvisible = !passwordvisible;
//                            },
//                          );
//                 },),
//                 alignLabelWithHint: false,
//                 filled: true,
//               ),
//               keyboardType: TextInputType.visiblePassword,
//               textInputAction: TextInputAction.done,
//             ),
//             SizedBox(height: 90,),
//             // ElevatedButton(onPressed: (){}, 
//             // child: Text("login"))
//             GestureDetector(
//               child:
//                Container(
//                 decoration: BoxDecoration(color: Color.fromARGB(255, 7, 90, 55),
//               borderRadius: BorderRadius.circular(15)),
                
//                 height: 70,
//                 width: 350,
//                 child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,fontSize: 50,),)),
//               ),
//             ),
//             SizedBox(height: 70,),
        
//             TextButton(onPressed: (){}, child: Text("create New Account ?",
//             style: TextStyle(fontSize: 25,color: Colors.black),))
//           ],
//         ),
//       ),
//     );
//   }
// }
