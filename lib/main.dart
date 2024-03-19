import 'package:flutter/material.dart';

import 'package:tiny_tots_care/Doctors/login.dart';

import 'package:tiny_tots_care/Admin/Admin.dart';
import 'package:tiny_tots_care/Admin/category.dart';
import 'package:tiny_tots_care/Admin/forgotten.dart';
import 'package:tiny_tots_care/Admin/login.dart';
import 'package:tiny_tots_care/Admin/loginp.dart';
import 'package:tiny_tots_care/Parent/p.home.dart';

import 'package:tiny_tots_care/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Splash()


    );
  }
}

