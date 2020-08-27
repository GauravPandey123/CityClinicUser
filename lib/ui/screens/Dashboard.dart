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
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/city_clinic_image.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 14),
            Text(
              "What are you looking for?",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18.0,
                color: blueTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(top: 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Meet a doctor",
                        style:
                            new TextStyle(fontSize: 16, color: blackOneColor),
                      ),
                      Text(
                        "Book Appointment",
                        style: new TextStyle(fontSize: 12, color: greyOneColor),
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("assets/images/offer_banner1.png",
                      fit: BoxFit.fill),
                ),
              ],
            ),
            Container(
              child: Expanded(
                child: ListView(
                  children: [
                    buildDepartmentList("Department", context),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

buildDepartmentList(String departmenttext, BuildContext context) {
  return Column(
    children: <Widget>[
      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "$departmenttext",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            FlatButton(
                onPressed: null,
                child: Text(
                  "View All",
                  style: TextStyle(color: blueTextColor, fontSize: 16.0),
                ))
          ],
        ),
      ),
      // new Container(
      //   child: Expanded(
      //     child: ListView.builder(
      //       primary: false,
      //       shrinkWrap: true,
      //       scrollDirection: Axis.horizontal,
      //       itemCount: 10,
      //       itemBuilder: (BuildContext context, int index) {
      //         return Padding(
      //             padding: EdgeInsets.only(right: 10.0), child: DepartItem());
      //       },
      //     ),
      //   ),
      //
      // )
    ],
  );
}
