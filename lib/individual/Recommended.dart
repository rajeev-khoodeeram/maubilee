import 'package:flutter/material.dart';
import 'package:maubilee/widget/DashboardItem.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: <Widget>[
              ListTile(
              title: Text.rich(TextSpan(text: "sadsd")),
              leading: Icon(Icons.restaurant),
              trailing: Icon(Icons.arrow_right),
              )

          ],


      ) 
    );
  }
}