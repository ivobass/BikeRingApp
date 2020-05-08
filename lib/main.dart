import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(BikeRingApp());

class BikeRingApp extends StatelessWidget {
  void playSound() {
    final player = AudioCache();
    player.play('ringbike.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: FlatButton(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        colors: const [
                          Colors.grey,
                          Colors.white,
                          Colors.grey,
                        ],
                      ),
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(blurRadius: 30),
                      ],
                    ),
                  ),
                  onPressed: () {
                    playSound();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
