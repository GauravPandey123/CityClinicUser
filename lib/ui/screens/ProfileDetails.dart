import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

          ),
        ),
      ),

    );
    // new MaterialApp(
    //   bottom: TabBar(
    //     labelColor: Colors.white,
    //     tabs: [
    //       Tab(
    //         text: "UPCOMING",
    //       ),
    //       Tab(
    //         text: "LIVE",
    //       ),
    //       Tab(
    //         text: "COMPLETED",
    //       ),
    //     ],
    //   ),
    // )
  }
}
