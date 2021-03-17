import 'package:flutter/material.dart';
import './quize.dart';
import 'result.dart';

/*void main() {
  runApp(MyApp());
}*/

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _mTotalScore = 0;

  void restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _mTotalScore = 0;
    });
  }

  final questions = const [
    {
      'questionText': 'favorite color?',
      'answer': [
        {'text': 'black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'White', 'score': 30},
        {'text': 'Orange', 'score': 40}
      ]
    },
    {
      'questionText': 'favorite animal??',
      'answer': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Dog', 'score': 5},
        {'text': 'Monkey', 'score': 3},
        {'text': 'Cat', 'score': 1}
      ]
    },
    {
      'questionText': 'favorite bird???',
      'answer': [
        {'text': 'parrot', 'score': 2},
        {'text': 'Ostrich', 'score': 10},
        {'text': 'Goose', 'score': 5},
        {'text': 'Rooster', 'score': 7}
      ]
    }
  ];

  answerQuestions(int mTotalScore) {
    // print("choose one answer");

    _mTotalScore += mTotalScore;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    // print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Mine"),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  answerQuestions: answerQuestions,
                  quetionindex: _questionIndex,
                )
              : Result(_mTotalScore,restartQuiz)),
    );
  }
}
