import 'package:flutter/material.dart';

class ToPassingContainer extends StatefulWidget{
  final String name;
  
  ToPassingContainer({@required this.name});

  @override
  State<StatefulWidget> createState() {
    return _ToPassingContainerState();
  }
}

class _ToPassingContainerState extends State<ToPassingContainer> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.name);
  }
}