import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String mAnswerText;

  Answer(this.selectHandler, this.mAnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(child: Text(mAnswerText), onPressed: selectHandler),
    );
  }
}
