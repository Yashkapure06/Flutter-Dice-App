import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee🎲'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//stateful widget is mutable i.e, it can be changed where as Stateless widget is immutable i.e, it cannot be changed
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;

  void buttonPressed() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex: ,
            child: FlatButton(
              onPressed: () {
                buttonPressed(); //We have changed the variable inside the set State function This changes the UI elements onPress Event

                //Anonymous Function
              },
              child: Image.asset(
                  'images/dice$leftDiceNumber.png'), //this is called String Interpolation
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                buttonPressed();

                //Anonymous Function
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
