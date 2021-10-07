import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:captain_earth_extension/services/cards.dart';

class DoctorList extends StatefulWidget {
  final Map data;
  ///data['type'] <- type of doctor
  DoctorList(this.data);

  @override
  _DoctorListState createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {

  final List<DoctorDetails> docDetails = [
    DoctorDetails('Dr. A', 'Psychiatrist', 'KMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ','Insomnia'),
    DoctorDetails('Dr. B', 'Cardiology', 'DMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ','Anxiety'),
    DoctorDetails('Dr. C', 'Psychiatrist', 'RMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ','Anxiety'),
    DoctorDetails('Dr. D', 'Psychiatrist', 'SMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ','Mental Depression'),
    DoctorDetails('Dr. E', 'Psychiatrist', 'Salimullah Medical', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ','Insomnia'),
    DoctorDetails('Dr. F', 'Psychiatrist', 'KMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ','Disorder'),
    DoctorDetails('Dr. G', 'Psychiatrist', 'KMC', 'a@gmail.com', 'https://youtu.be/dQw4w9WgXcQ','Disorder'),
  ];

  List<DoctorDetails> docDetailsClass = [];

  void initDoctorDetails(){
    for(int i=0; i<docDetails.length; i++) {
      if(docDetails[i].type == widget.data['type']){
        docDetailsClass.add(docDetails[i]);

      }
      // print(docDetails[i].type);
      // print(widget.data['type']);
    }

    print(docDetailsClass.length);
  }

  @override
  void initState() {
    initDoctorDetails();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: Design the doctor list page here
      backgroundColor: Colors.green[150],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          'Our Specialists in ${widget.data['type']}',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: docDetailsClass.map((docText) => DoctorCard(docText)).toList(),
            ),
            SizedBox(height: 30.0,)
          ],
        ),
      ),
    );
  }
}
