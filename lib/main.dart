import 'dart:ffi';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  var jokes = [
    {
      "question": "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      "question": "What did the ocean say to the beach?",
      "answer": "Nothing, it just waved."
    },
    {
      "question": "What do you call a factory that makes okay products?",
      "answer": "A satisfactory"
    },
    {"question": "How do you make 7 even?", "answer": "Take away the s"}
  ];

  var jokeIndex = 0;

  changeJokeIndex(String direction) {
    if (direction == "next") {
      if (jokeIndex != jokes.length - 1) {
        setState(() {
          jokeIndex++;
        });
      } else {
        setState(() {
          jokeIndex = 0;
        });
      }
    } else if (direction == "previous") {
      if (jokeIndex != 0) {
        setState(() {
          jokeIndex--;
        });
      } else {
        setState(() {
          jokeIndex = jokes.length - 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Question(question: jokes[jokeIndex]["question"] as String),
            Answer(answer: jokes[jokeIndex]["answer"] as String),
            Buttons(changeJokeIndex: changeJokeIndex),
          ],
        )),
      ),
    );
  }
}
