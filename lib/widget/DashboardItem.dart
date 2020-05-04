import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {
  final String title;


  DashboardItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.lightGreen, ),
        width: MediaQuery.of(context).size.width*0.5,
        height: 40,
        child: Center(child: Text(this.title, style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)),
      ),
    );
  }
}