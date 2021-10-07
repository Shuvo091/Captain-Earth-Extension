import 'package:captain_earth_extension/pages/doctorList.dart';
import 'package:captain_earth_extension/pages/eprescription.dart';
import 'package:captain_earth_extension/pages/mentalHealthTest.dart';
import 'package:captain_earth_extension/pages/problems.dart';
import 'package:captain_earth_extension/pages/starttest.dart';
import 'package:flutter/material.dart';
import 'package:captain_earth_extension/pages/loading.dart';
import 'package:captain_earth_extension/pages/home.dart';
import 'package:captain_earth_extension/pages/scoreAndVideo.dart';
import 'package:captain_earth_extension/pages/doctorBio.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    onGenerateRoute: (RouteSettings settings) {
      print('build route for ${settings.name}');
      var routes = <String, WidgetBuilder>{
        '/doctorBio':(context) => DoctorBio(settings.arguments as Map),
        '/doctorList':(context) => DoctorList(settings.arguments as Map),
      };
      WidgetBuilder builder = routes[settings.name]!;
      return MaterialPageRoute(builder: (ctx) => builder(ctx));
    },
    routes: {
      '/':(context) => Loading(),
      '/home':(context) => HomePage(),
      '/test':(context) => MentalTest(),
      '/result':(context) => ScoreAndVideo(),
      '/problemlist':(context) => ProblemList(),
      '/starttest' :(context) => StartTestPage(),
      '/eprescription':(context) => Eprescription(),
    },
  ));
}
