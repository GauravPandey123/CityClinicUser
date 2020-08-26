import 'package:city_clinic_user/ui/screens/Login-Screen.dart';
import 'package:city_clinic_user/ui/screens/MainScreen.dart';
import 'package:city_clinic_user/ui/screens/Signup.dart';
import 'package:city_clinic_user/ui/screens/Splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainScreen(),
    );
  }
}


