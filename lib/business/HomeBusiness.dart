import 'package:flutter/material.dart';
import 'package:maubilee/widget/DashboardItem.dart';

class HomeBusiness extends StatelessWidget {
  const HomeBusiness({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Welcome 'business name here'"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text("Manage Ads >>"),
          DetailsAds(),
          SizedBox(
            height: 30,
          ),
          Text("Stats >>"),
          DetailsAds(),
        ],
      ),
    );
  }
}

class DetailsAds extends StatelessWidget {
  const DetailsAds({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.deepOrange[50],
          blurRadius: 6.0, // has the effect of softening the shadow
          spreadRadius: 1.0, // has the effect of extending the shadow
          offset: Offset(
            1.0, // horizontal, move right 10
            1.0, // vertical, move down 10
          ),
        )
      ], borderRadius: BorderRadius.circular(20)),
      height: 200,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        elevation: 3,
      ),
    );
  }
}
