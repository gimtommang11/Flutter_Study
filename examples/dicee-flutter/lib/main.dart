import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void ChangeDiceNum (){
    setState(() {
      leftDiceNumber =Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
//    int leftDiceNumber = 1;   //build 스코프 밖에 있으면 변경되지 않는다
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
               ChangeDiceNum();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'), //$표시를 이용해 문자열에 삽입할 수 있다(string interpolation
            ),   //기존의 것과 기능은 같지만 더 간결하게 쓸 수 있다.
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                ChangeDiceNum();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}
