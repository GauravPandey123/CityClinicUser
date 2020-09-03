import 'package:city_clinic_user/ui/screens/AddAdress.dart';
import 'package:city_clinic_user/ui/screens/BottomTabsScreen.dart';
import 'package:city_clinic_user/ui/screens/Dashboard.dart';
import 'package:city_clinic_user/ui/screens/Login-Screen.dart';
import 'package:city_clinic_user/ui/screens/MainScreen.dart';
import 'package:city_clinic_user/ui/screens/ProfileDetails.dart';
import 'package:city_clinic_user/ui/screens/Signup.dart';
import 'package:city_clinic_user/ui/screens/Splash.dart';
import 'package:city_clinic_user/ui/screens/User_Profiles.dart';
import 'package:city_clinic_user/widget/OrderDeatilsItem.dart';
import 'package:city_clinic_user/widget/findandbook_item.dart';
import 'package:city_clinic_user/widget/health_articles_item.dart';
import 'package:city_clinic_user/widget/mycart_item.dart';
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
      home: BottomTabsScreen()
    );
  }
}


