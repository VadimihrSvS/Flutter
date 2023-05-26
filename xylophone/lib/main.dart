import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

void playSound(int number) {
  final player = new AudioPlayer();
  player.play(AssetSource('note$number.wav'));
}

var list = [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.teal, Colors.blue, Colors.purple];


Expanded buildKey({Color? color, int soundNumber = 0}){

    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          child: Text(''),
        ),
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              buildKey(color: list[0], soundNumber: 1),
              buildKey(color: list[1], soundNumber: 2),
              buildKey(color: list[2], soundNumber: 3),
              buildKey(color: list[3], soundNumber: 4),
              buildKey(color: list[4], soundNumber: 5),
              buildKey(color: list[5], soundNumber: 6),
              buildKey(color: list[6], soundNumber: 7),
            ]
          ),
        ),
      ),
    );
  }
}
