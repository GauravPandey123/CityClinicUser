import 'package:city_clinic_user/ui/screens/ForgotPasswordDialog.dart';
import 'package:city_clinic_user/ui/screens/OtpScreenDialog.dart';
import 'package:city_clinic_user/utils/AppRelatedText.dart';
import 'package:city_clinic_user/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
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
                          keyboardType: TextInputType.phone,
                          decoration:
                              InputDecoration(labelText: "Mobile Number"),
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
                          height: 10,
                        ),
                        FlatButton(
                          height: 50,
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20.0)), //this right here
                                      child: ForgotPasswordDialog()
                                  );
                                });
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Passowrd",
                              style: TextStyle(color: greyOneColor,fontSize: 16.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        FlatButton(
                          height: 50,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          color: blueTextColor,
                          onPressed: () {

                          },
                          child: Text(
                            "SignIn",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),


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
