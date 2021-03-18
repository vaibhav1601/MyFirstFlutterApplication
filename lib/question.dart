import 'package:flutter/material.dart';
import './page2.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Column(
            children: [
              Text(
                questionText,
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.red,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                child: Text('Go!'),
                onPressed: () {
                  Navigator.of(context).push(_createRoute());
                },
              ),
              /*  Icon(Icons.timer, color: Colors.green[500]),
              Text('COOK:',),
                 style: TextStyle(fontSize: 20, color: Colors.red),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr),
              Text('1 hr'),*/
            ],
          ),
          Column(
            children: [
              Icon(Icons.restaurant, color: Colors.green[500]),
              Text('FEEDS:',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr),
              Text('4-6'),
            ],
          ),
        ],
      ),
    );

    // TODO: implement build
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Page2(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
