import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tiny_tots_care/Admin/adminactivity.dart';

import 'package:tiny_tots_care/Doctors/login.dart';

import 'package:tiny_tots_care/Admin/Admin.dart';
import 'package:tiny_tots_care/Admin/category.dart';
import 'package:tiny_tots_care/Admin/forgotten.dart';
import 'package:tiny_tots_care/Admin/login.dart';
import 'package:tiny_tots_care/Parent/loginp.dart';
import 'package:tiny_tots_care/Parent/activity.dart';
import 'package:tiny_tots_care/a/students.dart';
import 'package:tiny_tots_care/daycare/loginn.dart';
import 'package:tiny_tots_care/daycare/registeration.dart';
import 'package:tiny_tots_care/daycare/submit.dart';
import 'package:tiny_tots_care/firebase_options.dart';

import 'package:tiny_tots_care/screens/splash2.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate();
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
      home: Splash2()


    );
  }
}

