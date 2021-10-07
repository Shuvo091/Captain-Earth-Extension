import 'package:captain_earth_extension/services/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProblemList extends StatefulWidget {
  @override
  _ProblemListState createState() => _ProblemListState();
}

class _ProblemListState extends State<ProblemList> {

  ///HomeText class contains the text on the card and the route
  List<HomeText> problemList = [
    HomeText('Mental Depression', '/doctorList'),
    HomeText('Anxiety', '/doctorList'),
    HomeText('Insomnia', '/doctorList'),
    HomeText('Disorder', '/doctorList'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[150],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          'What Problems are you facing?',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: problemList.map((homeText) => ProblemCard(homeText)).toList(),
      ),
    );
  }
}
