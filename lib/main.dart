import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PlaySoundButton(color: Colors.red, soundFile: 'note1.wav'),
              PlaySoundButton(color: Colors.orange, soundFile: 'note2.wav'),
              PlaySoundButton(color: Colors.yellow, soundFile: 'note3.wav'),
              PlaySoundButton(color: Colors.green, soundFile: 'note4.wav'),
              PlaySoundButton(color: Colors.tealAccent , soundFile: 'note5.wav'),
              PlaySoundButton(color: Colors.blue, soundFile: 'note6.wav'),
              PlaySoundButton(color: Colors.purple, soundFile: 'note7.wav'),
            ],
          )
        ),
      ),
    );
  }
}

class PlaySoundButton extends StatelessWidget {
  final String soundFile;
  final Color color;

  const PlaySoundButton({
    Key key,
    this.color,
    this.soundFile
  }): super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    return Expanded(
      child: TextButton(
        child: Container(
          color: color,
          // width: double.infinity,
          // height: double.infinity,
        ),
        onPressed: () {
          player.play(AssetSource(soundFile));
        },
      )
    );
  }
}