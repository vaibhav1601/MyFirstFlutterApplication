import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int quetionindex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestions,
      @required this.quetionindex});

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Question(
          questions[quetionindex]['questionText'],
        ),
        /*  Answer(answerQuestions),
            Answer(answerQuestions),
            Answer(answerQuestions),*/

        ...(questions[quetionindex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestions(answer['score']), answer['text']);
        }).toList()
      ],
    ));
  }
}
