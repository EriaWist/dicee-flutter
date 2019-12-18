import 'package:flutter/material.dart';
import 'dart:math';

// flutter pub get
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee_test'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var liftdice = 1;
  var rdice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  dichk();
                },
                child: Image.asset('images/dice$liftdice.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  dichk();
                },
                child: Image.asset('images/dice$rdice.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void dichk() {
    setState(() {
      liftdice = Random().nextInt(6) + 1;
      rdice = Random().nextInt(6) + 1;
    });
  }
}

void btnClickEvent(var numb) {
  print('btnClickEvent...');
}
