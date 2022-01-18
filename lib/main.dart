import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(
        title: Text("Dice Roll App By Satu Mitro"),
        backgroundColor: Colors.red,
      ),
      body: dicepage(),
    ),
  ));
}

class dicepage extends StatefulWidget {
  dicepage({Key? key}) : super(key: key);

  @override
  _dicepageState createState() => _dicepageState();
}

class _dicepageState extends State<dicepage> {
  int leftDiceNumber = 1;
  int rightDicenumber = 1;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDicenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              // ignore: deprecated_member_use
              child: FlatButton(
            onPressed: () {
              changeDiceFace();
            },
            child: Image.asset(
              'images/dice$leftDiceNumber.png',
            ),
          )),
          Expanded(
              // ignore: deprecated_member_use
              child: FlatButton(
            onPressed: () {
              changeDiceFace();
            },
            child: Image.asset(
              'images/dice$rightDicenumber.png',
            ),
          ))
        ],
      ),
    );
  }
}
