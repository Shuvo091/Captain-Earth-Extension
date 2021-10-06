import 'package:captain_earth_extension/pages/doctorList.dart';
import 'package:captain_earth_extension/pages/mentalHealthTest.dart';
import 'package:flutter/material.dart';
import 'package:captain_earth_extension/pages/loading.dart';
import 'package:captain_earth_extension/pages/home.dart';
import 'package:captain_earth_extension/pages/scoreAndVideo.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => Loading(),
      '/home':(context) => HomePage(),
      '/test':(context) => MentalTest(),
      '/result':(context) => ScoreAndVideo(),
      '/doctorList':(context) => DoctorList(),
    },
  ));
}
