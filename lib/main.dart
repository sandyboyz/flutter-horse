import 'package:flutter/material.dart';
import './basic_layout.dart' as layout;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: layout.BasicLayout()
    );
  }
}

