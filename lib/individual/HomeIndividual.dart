import 'package:flutter/material.dart';
import 'package:maubilee/individual/MyChoices.dart';
import 'package:maubilee/individual/NearMe.dart';

import 'package:maubilee/individual/Trending.dart';

class HomeIndividual extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeIndividual>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(
        backgroundColor: Colors.deepOrange,
        title: new Text("Welcome John"),
        centerTitle: true,
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
          indicatorSize: TabBarIndicatorSize.tab,
        ),
        bottomOpacity: 1,
      ),
      body: TabBarView(
        children: [MyChoices(), NearMe(), Trending()],
        controller: _tabController,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        child: Container(
          color: Colors.deepOrangeAccent,
          child: Icon(Icons.sort),
        ),
        onPressed: () {
          _scaffoldKey.currentState.showSnackBar(SnackBar(
            backgroundColor: Colors.orangeAccent,
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              
              children: <Widget>[
                InkWell(
                  child: Icon(
                    Icons.restaurant,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    print("Resto");
                  },
                ),
                InkWell(
                  child: Icon(
                    Icons.directions_car,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    print("Cars");
                  },
                ),
                InkWell(
                  child: Icon(
                    Icons.mobile_screen_share,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    print("Mobile");
                  },
                ),
               
              ],
            ),
            duration: Duration(seconds: 3),
          ));
        },
      ),
    );
  }
}
