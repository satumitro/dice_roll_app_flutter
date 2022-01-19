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

// ignore: camel_case_types
class dicepage extends StatefulWidget {
  const dicepage({Key? key}) : super(key: key);

  @override
  _dicepageState createState() => _dicepageState();
}

// ignore: camel_case_types
class _dicepageState extends State<dicepage> {
  var diceresult;
  int leftDiceNumber = 1;
  int rightDicenumber = 5;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDicenumber = Random().nextInt(6) + 1;
      diceresult = leftDiceNumber + rightDicenumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.only(top: 20)),
          Row(
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
                  ;
                },
                child: Image.asset(
                  'images/dice$rightDicenumber.png',
                ),
              )),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 50)),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              diceresult == null ? "" : " $diceresult",
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
          ),
          Container(
            height: 60,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(15)),
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
              },
              child: const Text(
                "Roll Dice",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
