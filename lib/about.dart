import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('About')),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(24),
            child : Text(
                'Simple flutter app that implement passing data between widgets, navigation, sidedrawer', style: TextStyle(fontSize: 24)), 
          )));
  }
}
