import 'package:flutter/material.dart';

class CustomAdsItem extends StatelessWidget {
  final String title;


  CustomAdsItem(this.title);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/sun.jpg'),
            ),
            title: Text('Sun'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/moon.jpg'),
            ),
            title: Text('Moon'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/stars.jpg'),
            ),
            title: Text('Star'),
          ),
        ],
      );
    }
}