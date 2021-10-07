import 'package:captain_earth_extension/services/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class StartTestPage extends StatefulWidget {
  const StartTestPage({Key? key}) : super(key: key);

  @override
  _StartTestPageState createState() => _StartTestPageState();
}

class _StartTestPageState extends State<StartTestPage> {

  ///HomeText class contains the text on the card and the route
  List<HomeText> homeCardList = [
    HomeText('Start The Test', '/test'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[150],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          'WHo 5 - Well Being Test',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: homeCardList.map((homeText) => HomeCard(homeText)).toList(),
      ),
    );
  }
}
