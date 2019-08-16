import 'package:flutter/material.dart';
import './profile_card.dart' as profile;
import './about.dart' as about;

class BasicLayout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BasicLayoutState();
  }
}

class _BasicLayoutState extends State<BasicLayout> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Basic Layout'),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu', style: TextStyle(fontSize: 30, color: Colors.white),),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            ListTile(title: Text('Horses'), onTap: (){
              Navigator.pop(context);
            }),
            ListTile(title: Text('About'), onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => about.About()));
            })
          ],
        )
      ),
      body: SingleChildScrollView(child : Column(children: <Widget>[
        profile.ProfileCard(
          name: 'Ruby', 
          from: 'Portland, OR, USA', 
          description: 'Ruby is a very good girl. Yes: Fetch, loungin\'.\nNo: Dogs who get on furniture. ',
          image: 'images/horse.jpg'),
        profile.ProfileCard(
          name: 'Diamond', 
          from: 'Washington, OR, USA', 
          description: 'Diamond is a very good girl. Yes: Fetch, loungin\'.\nNo: Dogs who get on furniture. ',
          image: 'images/horse2.jpg'),
        profile.ProfileCard(
          name: 'Crystal', 
          from: 'New York, OR, USA', 
          description: 'Crystal is a very good girl. Yes: Fetch, loungin\'.\nNo: Dogs who get on furniture. ',
          image: 'images/horse3.jpg'),
          profile.ProfileCard(
          name: 'Crystal', 
          from: 'New York, OR, USA', 
          description: 'Crystal is a very good girl. Yes: Fetch, loungin\'.\nNo: Dogs who get on furniture. ',
          image: 'images/horse3.jpg'),
      ],)
    ));
  }
}