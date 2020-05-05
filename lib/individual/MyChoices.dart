import 'package:flutter/material.dart';

class MyChoices extends StatelessWidget {
  const MyChoices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          children: <Widget>[
              ListTile(
              title: Text.rich(TextSpan(text: "Resto Le Capitano")),
              subtitle: Text("Buffet ouvert @ 500 / person"),
              leading: Icon(Icons.restaurant),
              trailing: Icon(Icons.arrow_right),
              )

          ],


      ) 
    );
  }
}