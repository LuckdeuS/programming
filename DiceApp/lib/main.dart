import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(DiceRoll());
}

class DiceRoll extends StatefulWidget {
  @override
  _DiceRollState createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  int nextDiceImage = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.orangeAccent,
          title: Center(child: Text('Juego de Dice', style: TextStyle(color: Colors.black), ), ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Spacer(),
            Expanded(
              flex: 1,
              child: Center(child: Image.asset('assents/img/dice$nextDiceImage.png'),),
              ),
            Spacer(),
            ElevatedButton(
              onPressed: (){
                setState(() {

                  nextDiceImage = Random().nextInt(6)+1;
                });
              },
              child: Text('Tire los dados', style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
