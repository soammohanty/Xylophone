import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

Expanded buildKey({Color color, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$soundNumber.wav');
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.blue, soundNumber: 1),
              buildKey(color: Colors.red, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.teal, soundNumber: 4),
              buildKey(color: Colors.purple, soundNumber: 5),
              buildKey(color: Colors.green, soundNumber: 6),
              buildKey(color: Colors.orange, soundNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}
