import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



///--------------------------------------------------------------------------------------------------------------
//Clickable cards for home page,problemlist page, starttest page,
// scoreAndVideo page, mentalHealthtest page
class HomeText{
  String options;
  String url;
  HomeText(this.options, this.url);
}

class ScorePageCard extends StatefulWidget {
  final HomeText homeText;
  ScorePageCard(this.homeText);

  @override
  _ScorePageCardState createState() => _ScorePageCardState();
}

class _ScorePageCardState extends State<ScorePageCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: InkWell(
        onTap: (){
          ///Navigate from Home page to other page
          Navigator.pushNamed(context, widget.homeText.url);
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  widget.homeText.options,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: 6.0,),
            ],
          ),
        ),
      ),
    );
  }
}



class HomeCard extends StatelessWidget {

  final HomeText homeText;
  HomeCard(this.homeText);


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: InkWell(
        onTap: (){
          ///Navigate from Home page to other page
          Navigator.pushNamed(context, homeText.url);
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  homeText.options,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: 6.0,),
            ],
          ),
        ),
      ),
    );
  }
}

///----------------------------------------------------------------------------------------------------------
//for quiz page
class QuizNavCard extends StatelessWidget {

  final HomeText homeText;
  QuizNavCard(this.homeText);


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, homeText.url, arguments: {'score':QuizText.score});
          print(QuizText.score);
          //QuizText.score = 0;
        },
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                homeText.options,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0,),
            ],
          ),
        ),
      ),
    );
  }
}





class QuesAndWeight{
  String ques;
  int weight;
  QuesAndWeight(this.ques,this.weight);
}

class QuizText{
  ///This is the score of the test
  static int score = 5;
  String question;
  QuesAndWeight opt1;
  QuesAndWeight opt2;
  QuesAndWeight opt3;
  QuesAndWeight opt4;
  QuesAndWeight opt5;

  QuizText(this.question,this.opt1,this.opt2,this.opt3,this.opt4,this.opt5);
}


class QuizCard extends StatefulWidget {

  final QuizText quiz;
  QuizCard(this.quiz);

  @override
  _QuizCardState createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  //TODO: logic for scoring
  dynamic _currentState;
  int _weight = 0;
  int _prevWeight = 0;

  @override
  void initState() {
    _currentState = widget.quiz.opt1.ques;
    _weight = widget.quiz.opt1.weight;
    _prevWeight = _weight;

    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              widget.quiz.question,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Radio(
                  value: widget.quiz.opt1.ques,
                  groupValue: _currentState,
                  onChanged: (value){
                    setState(() {
                      _currentState = value;
                      _prevWeight = _weight;
                      _weight = widget.quiz.opt1.weight;
                      QuizText.score += _weight-_prevWeight;
                    });
                  },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(widget.quiz.opt1.ques),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                value: widget.quiz.opt2.ques,
                groupValue: _currentState,
                onChanged: (value){
                  setState(() {
                    _currentState = value;
                    _prevWeight = _weight;
                    _weight = widget.quiz.opt2.weight;
                    QuizText.score += _weight - _prevWeight;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(widget.quiz.opt2.ques),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                value: widget.quiz.opt3.ques,
                groupValue: _currentState,
                onChanged: (value){
                  setState(() {
                    _currentState = value;
                    _prevWeight = _weight;
                    _weight = widget.quiz.opt3.weight;
                    QuizText.score += _weight-_prevWeight;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(widget.quiz.opt3.ques),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                value: widget.quiz.opt4.ques,
                groupValue: _currentState,
                onChanged: (value){
                  setState(() {
                    _currentState = value;
                    _prevWeight = _weight;
                    _weight = widget.quiz.opt4.weight;
                    QuizText.score += _weight-_prevWeight;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(widget.quiz.opt4.ques),
            ],
          ),
          Row(
            children: <Widget>[
              Radio(
                value: widget.quiz.opt5.ques,
                groupValue: _currentState,
                onChanged: (value){
                  setState(() {
                    _currentState = value;
                    _prevWeight = _weight;
                    _weight = widget.quiz.opt5.weight;
                    QuizText.score += _weight-_prevWeight;
                  });
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(widget.quiz.opt5.ques),
            ],
          ),
        ],
      ),
    );
  }
}


///----------------------------------------------------------------------------------------------------------------------
///Doctor list page
class DoctorDetails {
  String name;
  String studiedCollege;
  String expertize;
  String email;
  String url;
  String type;
  DoctorDetails(this.name,this.expertize, this.studiedCollege,this.email,this.url,this.type);
}

class DoctorCard extends StatelessWidget {
  final DoctorDetails doctorDetails;
  DoctorCard(this.doctorDetails);


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed('/doctorBio', arguments: {
            'url': doctorDetails.url,
            'name': doctorDetails.name,
          });

        },
        //TODO: Design the doctor list cards here
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '${doctorDetails.name}',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0,),
              Text(
                '${doctorDetails.expertize},',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0,),
              Text(
                '${doctorDetails.studiedCollege}',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
    );
  }
}



///ProblemCard--------------------------------------------------------------------------------------------------
class ProblemCard extends StatelessWidget {
  final HomeText doctorDetails;
  ProblemCard(this.doctorDetails);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed('/doctorList', arguments: {
            'type': doctorDetails.options,
          });
        },
        //TODO: Design the doctor list cards here
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  doctorDetails.options,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: 6.0,),
            ],
          ),
        ),
      ),
    );
  }
}