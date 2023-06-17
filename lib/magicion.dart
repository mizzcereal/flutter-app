import 'package:flutter/material.dart';

class MagicianPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warrior Page'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Text('This is the Warrior Page'),
      ),
    );
  }
}