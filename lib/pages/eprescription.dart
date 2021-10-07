import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Eprescription extends StatefulWidget {
  const Eprescription({Key? key}) : super(key: key);

  @override
  _EprescriptionState createState() => _EprescriptionState();
}

class _EprescriptionState extends State<Eprescription> {


  @override
  Widget build(BuildContext context) {
    //TODO: Design the E_prescription page here
    return Scaffold(
      backgroundColor: Colors.green[150],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          'E-Prescription',
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
