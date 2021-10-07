import 'package:flutter/material.dart';
import 'package:captain_earth_extension/services/cards.dart';

class DoctorList extends StatefulWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {

  final List<DoctorDetails> docDetails = [
    DoctorDetails('Dr. A', 'Cardiology', 'KMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ'),
    DoctorDetails('Dr. B', 'Cardiology', 'KMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ'),
    DoctorDetails('Dr. C', 'Cardiology', 'KMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ'),
    DoctorDetails('Dr. D', 'Cardiology', 'KMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ'),
    DoctorDetails('Dr. E', 'Cardiology', 'KMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ'),
    DoctorDetails('Dr. F', 'Cardiology', 'KMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ'),
    DoctorDetails('Dr. G', 'Cardiology', 'KMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[150],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          'Our Specialists',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: docDetails.map((docText) => DoctorCard(docText)).toList(),
        ),
      ),
    );
  }
}
