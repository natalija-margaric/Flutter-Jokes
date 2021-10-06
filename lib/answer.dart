import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;

  Answer({required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 15, 25, 50),
      child: Text(
        answer,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}
