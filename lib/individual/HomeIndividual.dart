import 'package:flutter/material.dart';
import 'package:maubilee/widget/DashboardItem.dart';

class HomeIndividual extends StatelessWidget {
  const HomeIndividual({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: <Widget>[
          DashboardItem("Recommended"),
          
          DashboardItem("Trending"),
          
          DashboardItem("My choice"),
          
          DashboardItem("Near me"),
          
        ],
      ),
    );
  }
}
