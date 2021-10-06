import 'package:captain_earth_extension/services/cards.dart';
import 'package:flutter/material.dart';


class MentalTest extends StatefulWidget {
  const MentalTest({Key? key}) : super(key: key);

  @override
  _MentalTestState createState() => _MentalTestState();
}

class _MentalTestState extends State<MentalTest> {

  List<HomeText> homeCardList = [
    HomeText('See Your Result', '/result'),
    HomeText('Consult a doctor', '/doctorList'),
  ];
  
  List<QuizText> quizQuesList = [
    QuizText(
        'Ques 1',
        QuesAndWeight('opt1',1),
        QuesAndWeight('opt2',2),
        QuesAndWeight('opt3',3),
        QuesAndWeight('opt4',4),
        QuesAndWeight('opt5',5)
    ),
    QuizText(
        'Ques 2',
        QuesAndWeight('opt1',1),
        QuesAndWeight('opt2',2),
        QuesAndWeight('opt3',3),
        QuesAndWeight('opt4',4),
        QuesAndWeight('opt5',5)
    ),
    QuizText(
        'Ques 3',
        QuesAndWeight('opt1',1),
        QuesAndWeight('opt2',2),
        QuesAndWeight('opt3',3),
        QuesAndWeight('opt4',4),
        QuesAndWeight('opt5',5)
    ),
    QuizText(
        'Ques 4',
        QuesAndWeight('opt1',1),
        QuesAndWeight('opt2',2),
        QuesAndWeight('opt3',3),
        QuesAndWeight('opt4',4),
        QuesAndWeight('opt5',5)
    ),
    QuizText(
        'Ques 5',
        QuesAndWeight('opt1',1),
        QuesAndWeight('opt2',2),
        QuesAndWeight('opt3',3),
        QuesAndWeight('opt4',4),
        QuesAndWeight('opt5',5)
    ),
  ];

  int _score = 0;

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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: quizQuesList.map((quizText) => QuizCard(quizText)).toList(),
            ),
            SizedBox(
              height: 30.0,
            ),
            Column(
              children: homeCardList.map((homeText) => HomeCard(homeText)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
