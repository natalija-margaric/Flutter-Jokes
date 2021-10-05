import 'dart:ffi';

import 'package:flutter/material.dart';

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
    {"question": "Kako se ja zovem?", "answer": "Natalija"},
    {
      "question": "Hoću li postati flutter developer?",
      "answer": "naravno da da"
    },
    {"question": "tko je bio u Zagrebu?", "answer": "Marko"}
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
            Container(
              margin: EdgeInsets.all(25),
              child: Text(
                jokes[jokeIndex]["question"] as String,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 15, 25, 50),
              child: Text(
                jokes[jokeIndex]["answer"] as String,
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: FloatingActionButton(
                    onPressed: () {
                      changeJokeIndex("previous");
                    },
                    child: Icon(
                      Icons.arrow_left_rounded,
                      size: 50,
                    ),
                    backgroundColor: Colors.deepOrangeAccent,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: FloatingActionButton(
                    onPressed: () {
                      changeJokeIndex("next");
                    },
                    child: Icon(Icons.arrow_right_rounded, size: 50),
                    backgroundColor: Colors.deepOrangeAccent,
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
