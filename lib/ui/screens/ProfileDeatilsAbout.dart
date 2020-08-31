import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileDetailsAbout extends StatefulWidget {
  @override
  _ProfileDetailsAboutState createState() => _ProfileDetailsAboutState();
}

class _ProfileDetailsAboutState extends State<ProfileDetailsAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Form(
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Full Name",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Mobile Number",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Email Id",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Email Id",
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 14.0),
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Gender",
                            style: new TextStyle(
                              fontSize: 16,
                              color: blackOneColor,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(top: 10.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: blueTextColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueTextColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )),
                            SizedBox(width: 20),
                            Expanded(
                                child: Container(
                              margin: EdgeInsets.only(top: 10.0),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: blueTextColor),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blueTextColor,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )),
                          ],
                        ),
                        SizedBox(height: 14),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              SizedBox(height: 10),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: " - Select Date - ",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  suffixIcon: IconButton(
                                    icon: new Icon(
                                      Icons.date_range,
                                      color: Colors.white,
                                    ),
                                    onPressed: () => null,
                                  ),
                                  fillColor: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Height",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Weight",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Address Line 1",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Address Line 2",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Select City",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: "Select Country",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                ),
                              ),
                              SizedBox(height: 30),
                              FlatButton(
                                height: 50,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0)),
                                color : blueTextColor,
                                onPressed: () {},
                                child: Text(
                                  "Save",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
