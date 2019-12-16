import 'dart:math';

import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('Dicee')),
        ),
        body: DiceePage(),
      ),
    );
  }
}

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceNumber = 3;
  int rightDiceNumber = 2;
  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/dice$leftDiceNumber.png'),
              onPressed: () => changeDiceNumber(),
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('assets/dice$rightDiceNumber.png'),
              onPressed: () => changeDiceNumber(),
            ),
          )
        ],
      ),
    );
  }
}
