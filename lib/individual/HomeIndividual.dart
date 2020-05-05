import 'package:flutter/material.dart';
import 'package:maubilee/individual/MyChoices.dart';
import 'package:maubilee/individual/NearMe.dart';
import 'package:maubilee/individual/Recommended.dart';
import 'package:maubilee/individual/Trending.dart';


class HomeIndividual extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeIndividual> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }


@override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange,
        title: new Text("Welcome 'User'"),
        bottom: TabBar(
          unselectedLabelColor: Colors.white,
          labelColor: Colors.amber,
          tabs: [
          new Tab(text: "My Choices", icon: new Icon(Icons.favorite)),
          new Tab(text: "Near Me", icon: new Icon(Icons.near_me)),
          new Tab(text: "Trending", icon: new Icon(Icons.trending_up)),
        ],
        controller: _tabController,
        indicatorColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,),
        bottomOpacity: 1,
      ),
      body: TabBarView(
          children: [
              
              MyChoices(),
              NearMe(),
              Trending()
      ],
      controller: _tabController,),
    );
  }



  
}
