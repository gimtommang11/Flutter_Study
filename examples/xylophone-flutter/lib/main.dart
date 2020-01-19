import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound (int SoundNum) {
    final player = AudioCache();
    player.play('note$SoundNum.wav');
  }

  Expanded buildKey ({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){PlaySound(soundNum);},
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNum: 1),
              buildKey(color: Colors.orange, soundNum: 2),
              buildKey(color: Colors.yellow, soundNum: 3),
              buildKey(color: Colors.green, soundNum: 4),
              buildKey(color: Colors.blue, soundNum: 5),
              buildKey(color: Colors.indigo, soundNum: 6),
              buildKey(color: Colors.purple, soundNum: 7)
            ],
          ),
        ),
      ),
    );
  }
}