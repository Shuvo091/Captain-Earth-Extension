import 'package:captain_earth_extension/services/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ///HomeText class contains the text on the card and the route
  List<HomeText> homeCardList = [
    HomeText('How am I doing?', '/starttest'),
    HomeText('Meet my Kotha bondhu', '/problemlist'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[150],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          'Home',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: homeCardList.map((homeText) => HomeCard(homeText)).toList(),
      ),
    );
  }
}
