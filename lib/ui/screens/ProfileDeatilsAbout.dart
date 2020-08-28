import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                            decoration: InputDecoration(labelText: "Name"),

                          ),
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
