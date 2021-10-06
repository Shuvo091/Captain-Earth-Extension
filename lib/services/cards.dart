import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeText{
  String options;
  String url;
  HomeText(this.options, this.url);
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
          Navigator.pushNamed(context, homeText.url);
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
  dynamic _currentState;
  int _weight = 0;
  int _prevWeight = 0;

  @override
  void initState() {
    // TODO: implement initState
    _currentState = widget.quiz.opt1.ques;
    _weight = widget.quiz.opt1.weight;
    _prevWeight = _weight;
    //QuizText.score = 0;

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
                    QuizText.score += _weight-_prevWeight;
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

