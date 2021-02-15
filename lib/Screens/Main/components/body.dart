import 'package:flutter_auth/Screens/About/about_screen.dart';
import 'package:flutter_auth/Screens/Messages/messages_screen.dart';
import 'package:flutter_auth/Screens/Profile/profile_screen.dart';
import 'package:flutter_auth/Screens/Timer/timer_screen.dart';

//Tabbed Navigation
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4, //4 Tabs
        child: Scaffold(
          appBar: AppBar(
            title: Text('Welcome'),
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.message,
                  color: Colors.yellow,
                )),
                Tab(
                    icon: Icon(
                  Icons.timer,
                  color: Colors.greenAccent,
                )),
                Tab(icon: Icon(Icons.info)),
                Tab(icon: Icon(Icons.person)),
              ],
            ), //TabBar
          ), //AppBar
          body: TabBarView(
            children: <Widget>[
              // Icon(Icons.directions_mail),
              // Icon(Icons.directions_transit),
              // Icon(Icons.directions_bike),
              // Icon(Icons.person),
              MessagesScreen(),
              TimerScreen(),
              AboutScreen(),
              ProfileScreen(),
            ],
          ), //TabBarView
        ), //Scaffold
      ), //DefaultTabController
    ); //MaterialApp
  }
}
