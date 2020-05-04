import 'package:flutter/material.dart';

class RegisterBusiness extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return 
    new Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Business"), backgroundColor: Colors.deepOrange,),
      body: Container(
      color: Colors.white,
      child: Text("Business as usual !"),
    ));
    
    
  }
}