import 'package:city_clinic_user/ui/screens/LabTestScreen.dart';
import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/depart_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 220,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      child: Image.asset(
                        "assets/images/city_clinic_image.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "What are you looking for?",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: blueTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Wrap(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: dividerColor)),
                              padding: EdgeInsets.all(6),
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Pharmacy",
                                        style:
                                        new TextStyle(
                                            fontSize: 16, color: blackOneColor),
                                      ),
                                      Text(
                                        "Medicines & Health",
                                        style: new TextStyle(
                                            fontSize: 12, color: greyOneColor),
                                      )
                                    ],),
                                  SizedBox(width: 4,),
                                  Image.asset(pharmacy, height: 40, width: 40),
                                  SizedBox(width: 4,),
                                  SvgPicture.asset(
                                      forwardImage, height: 24, width: 24)
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: dividerColor)),
                              padding: EdgeInsets.all(6),
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Consult Online",
                                        style:
                                        new TextStyle(
                                            fontSize: 16, color: blackOneColor),
                                      ),
                                      Text(
                                        "Book Consultation",
                                        style: new TextStyle(
                                            fontSize: 12, color: greyOneColor),
                                      )
                                    ],),
                                  SizedBox(width: 4,),
                                  Image.asset(
                                      consultOnline, height: 40, width: 40),
                                  SizedBox(width: 4,),
                                  SvgPicture.asset(
                                      forwardImage, height: 24, width: 24)
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 4),
                        Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: dividerColor)),
                              padding: EdgeInsets.all(6),
                              margin: EdgeInsets.only(top: 20),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text(
                                        "Pharmacy",
                                        style:
                                        new TextStyle(
                                            fontSize: 16, color: blackOneColor),
                                      ),
                                      Text(
                                        "Medicines & Health",
                                        style: new TextStyle(
                                            fontSize: 12, color: greyOneColor),
                                      )
                                    ],),
                                  SizedBox(width: 4,),
                                  Image.asset(
                                      meetadoctor, height: 40, width: 40),
                                  SizedBox(width: 4,),
                                  SvgPicture.asset(
                                      forwardImage, height: 24, width: 24)
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => LabTestScreen()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: dividerColor)),
                                  padding: EdgeInsets.all(6),
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: <Widget>[
                                      Column(
                                        children: <Widget>[
                                          Text(
                                            "Lab Tests",
                                            style:
                                            new TextStyle(fontSize: 16,
                                                color: blackOneColor),
                                          ),
                                          Text(
                                            "Test & Checkups",
                                            style: new TextStyle(fontSize: 12,
                                                color: greyOneColor),
                                          )
                                        ],
                                      ),
                                      SizedBox(width: 4,),
                                      Image.asset(
                                          meetadoctor, height: 40, width: 40),
                                      SizedBox(width: 4,),
                                      SvgPicture.asset(
                                          forwardImage, height: 24, width: 24)
                                    ],
                                  ),


                                ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 180,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          child: Image.asset("assets/images/offer_banner1.png",
                              fit: BoxFit.fill),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}

