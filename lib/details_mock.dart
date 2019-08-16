import 'package:flutter/material.dart';

class DetailsMock extends StatelessWidget{
  final data;
  
  DetailsMock({this.data});

  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      appBar: AppBar(title: Text("Details Mock")),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
        Text(data["name"]),
        Text(data["from"]),
        Text(data["description"]),
      ],))
    );
  }
}