import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                "hello natalija, lets make some jokes",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 15, 25, 50),
              child: Text(
                "Answer",
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
                    onPressed: null,
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
                    onPressed: null,
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
