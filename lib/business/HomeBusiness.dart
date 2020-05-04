import 'package:flutter/material.dart';
import 'package:maubilee/widget/DashboardItem.dart';

class HomeBusiness extends StatelessWidget {
  const HomeBusiness({Key key}) : super(key: key);

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
          DashboardItem("Manage Ads"),
          
          DashboardItem("Stats"),
          
        ],
      ),
    );
  }
}
