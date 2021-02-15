import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print(' could not launch $command');
  }
}

class Body extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF48CAE4),
        primaryColor: Colors.pink,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('assets/images/rclogo.png'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Rohit Panda'.toUpperCase()),
              SizedBox(
                height: 15.0,
                width: 200.0,
                child: Divider(
                  color: Colors.lightGreenAccent,
                ),
              ),
              Text('Founder/Student At NYP'.toUpperCase()),
              SizedBox(
                height: 10.0,
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.pink,
                  ),
                  title: Text('8486 7599'),
                  onLongPress: () {
                    customLaunch('tel:+65 8486 7599');
                  },
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.pink,
                  ),
                  title: Text('pandarohit05@gmail.com'),
                  onLongPress: () {
                    customLaunch(
                        'mailto:pandarohit05@gmail.com?subject=hello%20subject&body=Dear Rohit,%20body');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
