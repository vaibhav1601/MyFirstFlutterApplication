import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  final int mTotalScore;
  final Function resultHandler;

  Result(this.mTotalScore, this.resultHandler);

  String get resultPhase {
    String text;
    if (mTotalScore <= 40) {
      text = 'You are awesome and innocent';
    } else if (mTotalScore <= 90) {
      text = 'pretty likeable';
    } else if (mTotalScore <= 100) {
      text = 'you are...strange ';
    } else {
      text = 'you are...so bad';
    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.bold, color: Colors.red),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resultHandler,
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.blue)),
              child: Text('Restart Quiz'))
        ],
      ),
    );
  }
}
