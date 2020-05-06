import 'package:flutter/material.dart';
import 'package:maubilee/widget/DashboardItem.dart';

class HomeBusiness extends StatelessWidget {
  const HomeBusiness({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      persistentFooterButtons: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Powered by", style: TextStyle(fontSize: 20),),
              Text(" "),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/logo.png", height: 50,),
              ),

          ],) 

      ],
      appBar: AppBar(
        title: Text("Welcome 'Courts Mauritius'"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body:  SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text("Manage Ads >>", style: TextStyle(color:Colors.deepOrange),textAlign: TextAlign.start,),
                  DetailsAds(),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Stats >>", style: TextStyle(color:Colors.deepOrange),),
                  DetailsAds(),
            
                

                ],
            ),
              ),
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
      child: 
      
      Card(
        elevation: 3,
      ),
    );
  }
}
