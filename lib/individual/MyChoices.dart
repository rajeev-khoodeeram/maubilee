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
              ),
               ListTile(
              title: Text.rich(TextSpan(text: "l'ocasion en OR !")),
              subtitle: Text("Honda Fit 2019 @ 300,000..."),
              leading: Icon(Icons.directions_car),
              trailing: Icon(Icons.arrow_right),
              ),
               ListTile(
              title: Text.rich(TextSpan(text: "Courts Mammouth")),
              subtitle: Text("Iphone 21x available now..."),
              leading: Icon(Icons.mobile_screen_share),
              trailing: Icon(Icons.arrow_right),
              )

          ],


      ) 
    );
  }
}