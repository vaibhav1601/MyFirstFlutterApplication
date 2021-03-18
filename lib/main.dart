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

  final menu = ['Ask your question', 'History', 'contact us'];

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
              : Result(_mTotalScore, restartQuiz),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('Mine'),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                ListTile(
                  title: Text(menu[0]),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text(
                    menu[1],
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: Text(
                    menu[2],
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
              ],
            ),
          ),

      ),
    );
  }
}


