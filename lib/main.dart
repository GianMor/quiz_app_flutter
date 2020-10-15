import 'package:flutter/material.dart';
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

  var question = [
    "What\'s your favorite color?",
    "What\'s your favorite animal?",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Question(question[_questionIndex]),
            RaisedButton(child: Text("Answer 1"), onPressed: _answerQuestion),
            RaisedButton(child: Text("Answer 2"), onPressed: _answerQuestion),
            RaisedButton(child: Text("Answer 3"), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
