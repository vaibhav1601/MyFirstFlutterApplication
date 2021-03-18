import 'package:flutter/material.dart';

class SnackBarPage extends StatelessWidget {
  final Function resultHandler;

  SnackBarPage(this.resultHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('would you start quiz !'),
            action: SnackBarAction(
              label: 'start',
              onPressed: resultHandler,
            ),
          );
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text('Restart Quiz'),
      ),
    );
  }
}
