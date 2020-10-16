import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.answerQuestion,
      @required this.questions,
      @required this.questionIndex
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answer'] as List<Map<String,Object>>)
            .map((answer) => Answer(/*arrow fun because onPressed is void*/()=>answerQuestion(answer['score']), answer['text']))
            .toList()
      ],
    );
  }
}
