import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/SnakeGame/body.dart';

//Root of the GameScreen
class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SnakeGame(),
    );
  }
}
