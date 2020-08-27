import 'package:city_clinic_user/utils/AppImages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:city_clinic_user/utils/AppRelatedText.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                SizedBox(height: 48),
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  title: Text(
                    AppRelatedText.signup_welcome_text,
                    style: new TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    AppRelatedText.signup_welcome_text_detailstocontinue,
                    style: new TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 20),
                Form(
                  key: _formKey,
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
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.phone,
                          decoration:
                              InputDecoration(labelText: "Mobile Number"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(labelText: "Email"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: "Password",
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.blue,
                          onPressed: () {},
                          child: Text(
                            "SignUp",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          AppRelatedText.orsignupwith,
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                            fontSize: 16,
                            color: (Colors.grey),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                'Google',
                                style: new TextStyle(
                                    fontSize: 20, color: Colors.grey ),
                              ),
                            ),
                            FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'Facebook',
                                  style: new TextStyle(
                                      fontSize: 20, color: Colors.grey),
                                ))
                          ],
                        )

//                        Expanded(
//                            child: Align(
//                              alignment: Alignment.bottomCenter,
//                              child: RichText(
//                              text: TextSpan(
//                                children: [
//                                  TextSpan(
//                                      text:
//                                      "By proceeding, you agree to Smart Travel Ticket Privacy Policy,",
//                                      style: TextStyle(color: Color(0xFF858585))),
//                                  TextSpan(
//                                      text: "User Agreement",
//                                      style: TextStyle(color: Colors.black)),
//                                  TextSpan(
//                                      text: " and ",
//                                      style: TextStyle(color: Color(0xFF858585))),
//                                  TextSpan(
//                                      text: "Terms of Services.",
//                                      style: TextStyle(color: Colors.black))
//    ]
//                              )),
//                        ))
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
