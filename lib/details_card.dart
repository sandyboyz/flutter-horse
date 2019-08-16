import 'package:flutter/material.dart';

class DetailsCard extends StatefulWidget{
  final data;

  DetailsCard({@required this.data});

  @override
  State<StatefulWidget> createState() {
    return _DetailsCardState();
  }
}

class _DetailsCardState extends State<DetailsCard> {
  int _sliderValue = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Details Card')), 
        body: SingleChildScrollView(
          child : Column(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30, left: 30, right: 30),
          padding: EdgeInsets.all(10),
          color: Colors.blue,
          width: double.infinity,
          child: Column(children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(widget.data['image'])
                )
              )   
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
              Text(widget.data['name'], style: TextStyle(fontSize: 30, color: Colors.white) ),
              Icon(Icons.account_box, size: 30, color: Colors.white)
            ],),
            
            Text(widget.data['from'], style: TextStyle(fontSize: 22, color: Colors.white) ),
            Container(
              child : Text(widget.data['description'], style: TextStyle(color: Colors.white)),
              margin: EdgeInsets.all(10)
            ),
            Container(
              
              child: Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                Icon(Icons.star, color: Colors.white, size: 35),
                Text(' 10 / 10', style: TextStyle(color: Colors.white, fontSize: 30))
              ],)
            )
          ],)
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          color: Colors.black,
          child: Column(children: <Widget>[
            Row(children: <Widget>[
              Expanded(
                child : Slider(onChanged: (double newValue) {
                setState(() {
                  _sliderValue = newValue.round();
                });
              }, value:_sliderValue.toDouble(), max: 10, min: 0, inactiveColor: Colors.grey, activeColor: Colors.blue,),
              ),
              Container(
                width: 45,
                child: Text(_sliderValue.toString(), style: TextStyle(color: Colors.white, fontSize: 20)) 
              )
              
            ],),
            RaisedButton(onPressed: (){}, color: Colors.blue,child: Text('Submit')),
        ],)),
        
      ],)
        ),);
  }
}