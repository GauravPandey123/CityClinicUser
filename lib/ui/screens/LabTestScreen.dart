import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:city_clinic_user/widget/labcategories_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LabTestScreen extends StatefulWidget {
  @override
  _LabTestScreenState createState() => _LabTestScreenState();
}

class _LabTestScreenState extends State<LabTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Image.asset("assets/images/city_clinic_image.png"),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Lab Tests By Department",
                            style:
                                TextStyle(fontSize: 20, color: blueTextColor),
                          ),
                          Text(
                            "View All >",
                            style:
                                TextStyle(fontSize: 20, color: blueTextColor),
                          )
                        ],
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Top Booked Tests",
                            style:
                                TextStyle(fontSize: 20, color: blueTextColor),
                          ),
                          Text(
                            "View All >",
                            style:
                                TextStyle(fontSize: 20, color: blueTextColor),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(height: 10),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

  buildLabTestScreen(BuildContext context){
  return GridView(
    padding: const EdgeInsets.all(25),
    children: List.generate(20, (index) => null),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 200,
      childAspectRatio: 3 / 2,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
    ),
  );

}
