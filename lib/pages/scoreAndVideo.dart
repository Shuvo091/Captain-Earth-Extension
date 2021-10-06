import 'package:flutter/material.dart';

class ScoreAndVideo extends StatefulWidget {
  const ScoreAndVideo({Key? key}) : super(key: key);

  @override
  _ScoreAndVideoState createState() => _ScoreAndVideoState();
}

class _ScoreAndVideoState extends State<ScoreAndVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[150],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          'Your Score',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
