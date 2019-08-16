import 'package:flutter/material.dart';
import './details_card.dart' as details;

class ProfileCard extends StatefulWidget {
  final String name;
  final String from;
  final String description;
  final String image;

  ProfileCard(
      {@required this.name, @required this.from, @required this.description, @required this.image});

  @override
  State<StatefulWidget> createState() {
    return _ProfileCardState();
  }
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => details.DetailsCard(data: 
            {'name' : widget.name,
            'from' : widget.from,
            'description': widget.description,
            'image': widget.image})
            
            ));
          },
          child : Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(widget.image)))),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(widget.name,
                                style: TextStyle(
                                    fontSize: MediaQuery.of(context).size.width * 0.08, color: Colors.white)),
                            Icon(Icons.account_box,
                                size: MediaQuery.of(context).size.width * 0.07, color: Colors.white)
                          ],
                        ),
                        Text(widget.from,
                            style:
                                TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045, color: Colors.white)),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.star, color: Colors.white, size: MediaQuery.of(context).size.width * 0.05),
                            Text(' 10 / 10',
                                style: TextStyle(
                                    color: Colors.white, fontSize: MediaQuery.of(context).size.width * 0.05))
                          ],
                        ))
                      ],
                    ),
                  ],
                ),
              ],
            )),
    );
  }
}
