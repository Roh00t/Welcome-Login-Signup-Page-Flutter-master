import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Messages/messages_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Connected Devices'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MessagesScreen();
                  },
                ),
              );
            },
          ),
        ),
        body: TestPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // 1st item - Text (Title)
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Text(
              'Your Devices',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),

        //3rd item - Container (GridView)
        Container(
          height: MediaQuery.of(context).size.height - 180,
          color: Colors.grey[45],
          child: GridView.count(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            padding: EdgeInsets.all(5.0),
            children: <Widget>[
              buildGridViewItem(
                  'assets/images/Nexus6P.jfif', 'Nexus 6P', 'Current Device'),
              buildGridViewItem('assets/images/iPhone12Pro.jpg', 'iPhone12Pro',
                  'Sign In: 12 Jan'),
              buildGridViewItem(
                  'assets/images/iPhone12.jpg', 'iPhone12', 'Sign In: 1 Jan'),
              buildGridViewItem(
                  'assets/images/iPhone11.jpg', 'iPhone11', 'Sign In: 9 Jan'),
              buildGridViewItem(
                  'assets/images/iPhoneXR.jpg', 'iPhoneXR', 'Sign In: 2 Jan'),
              buildGridViewItem(
                  'assets/images/iPhoneSE.jpg', 'iPhoneSE', 'Sign In: 10 Jan'),
            ],
          ),
        ),
        // 3rd item - Text (Title)
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Text(
              'Sign out on the devices to disconnect',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

buildGridViewItem(String img, String line1, String line2) {
  return Column(
    children: <Widget>[
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(img),
          ),
        ),
      ),
      Text(line1),
      Text(line2), //Set Font size
    ],
  );
}
