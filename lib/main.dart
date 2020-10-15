import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  var questions = [
    {
      'questionText' : 'What\'s your favorite color?',
      'answer' : [ 'Black' , 'Red' , 'Green' , 'White' ],
    },
    {
      'questionText' : 'What\'s your favorite animal?',
      'answer' : [ 'Rabbit' , 'Snake' , 'Elephant' , 'Lion' ],
    },
    {
      'questionText' : 'What\'s your favorite water?',
      'answer' : [ 'Letizia' , 'Guizza' , 'Dolomia' , 'None' ],
    },
  ];

  // var question = [
  //   "What\'s your favorite color?",
  //   "What\'s your favorite animal?",
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['questionText']),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) => Answer(_answerQuestion,answer)).toList()
          ],
        ),
      ),
    );
  }
}
