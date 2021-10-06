import 'package:flutter/material.dart';


class MentalTest extends StatefulWidget {
  const MentalTest({Key? key}) : super(key: key);

  @override
  _MentalTestState createState() => _MentalTestState();
}

class _MentalTestState extends State<MentalTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[150],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          'Take a test here',
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
