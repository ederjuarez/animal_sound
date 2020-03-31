import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(AnimalSoundAPp());

class AnimalSoundAPp extends StatelessWidget {
  void playSound(String nameSound) {
    final player = AudioCache();
    player.play('$nameSound.wav');
  }

  Expanded buildKeyImage({String name}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(name);
        },
        child: Image.asset('images/$name.png'),
      ),
    );
  }

  Row buildKeyRow({String name1, String name2}) {
    return Row(
      children: <Widget>[
        buildKeyImage(name: name1),
        buildKeyImage(name: name2),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              buildKeyRow(name1: 'burro', name2: 'caballo'),
              buildKeyRow(name1: 'cerdo', name2: 'gallina'),
              buildKeyRow(name1: 'gallo', name2: 'oveja'),
              buildKeyRow(name1: 'pato', name2: 'perro'),
              buildKeyRow(name1: 'pollo', name2: 'vaca'),
            ],
          ),
        ),
      ),
    );
  }
}
