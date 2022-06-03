import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade500,
          appBar: AppBar(
            title: Text('ASK ME ANYTHING'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: myApp(),
        ),
      ),
    );

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: FlatButton(
          onPressed: () {
            setState(
              () {
                ballNumber =
                Random().nextInt(5) + 1;
              },
            );
          },
          child: Image.asset(
            'images/ball${ballNumber}.png',
          ),
        ),
      ),
    ]);
  }
}
