import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, Function tapHandler) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: 0,vertical: -3),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height:150,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),

          buildListTile('Home', () {

          }),
          buildListTile('Book Appointment', () {}),
          buildListTile('ConsultOnline', () {}),
          buildListTile('Store', () {}),
          buildListTile('Royal City Clinic', () {}),
          buildListTile('Fahaheel', () {}),
          buildListTile('Health Packages', () {}),
          buildListTile('Health Articles', () {}),

        ],
      ),
    );
  }
}
