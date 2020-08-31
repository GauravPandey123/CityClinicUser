import 'package:city_clinic_user/ui/screens/ProfileDeatilsAbout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProfileDetailFamilyMember.dart';
import 'ProfileFamilyAddDetail.dart';

class ProfileDetails extends StatefulWidget {
  @override
  _ProfileDetailsState createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
           appBar: AppBar(
             bottom: TabBar(
               labelColor: Colors.white,
               tabs: [
                 Tab(
                   text: "About",

                 ),
                 Tab(
                   text: "Family Member",
                 ),
               ],
             ),
           ),
          body: TabBarView(
              children: [ProfileDetailsAbout(),ProfileFamilyAddDetail()],
          ),
        ),
      ),

    );
  }
}
