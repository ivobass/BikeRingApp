import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(BikeRingApp());

class BikeRingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[600],
        body: BikeRingHome(),
      ),
    );
  }
}

class BikeRingHome extends StatefulWidget {
  BikeRingHome({Key key}) : super(key: key);

  @override
  _BikeRingHomeState createState() => _BikeRingHomeState();
}

class _BikeRingHomeState extends State<BikeRingHome> {
  void playSound() {
    final player = AudioCache();
    player.play('ringbike.wav');
  }

  double _fat = 300.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Stack(
          fit: StackFit.loose,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 1),
              child: FlatButton(
                child: Center(
                  child: Container(
                    child: Image.asset(
                      'assets/screwmicro.png',
                      width: 20.0,
                      height: 20.0,
                    ),
                    width: _fat,
                    height: _fat,
                    decoration: BoxDecoration(
                      gradient: SweepGradient(colors: [
                        Colors.grey.shade600,
                        Colors.grey.shade300,
                        Colors.grey.shade600,
                        Colors.grey.shade700,
                        Colors.grey.shade600,
                        Colors.grey.shade400,
                        Colors.grey.shade200,
                        Colors.grey.shade500,
                        Colors.grey.shade500,
                        Colors.grey.shade800,
                        Colors.grey.shade600,
                        Colors.white,
                        Colors.grey.shade200,
                        Colors.grey.shade500,
                        Colors.grey.shade500,
                        Colors.grey.shade300,
                        Colors.grey.shade400,
                        Colors.grey.shade600,
                        Colors.grey.shade600,
                        Colors.grey.shade700,
                        Colors.grey.shade800,
                        Colors.grey.shade600,
                      ]),
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(blurRadius: 30),
                      ],
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    _fat = _fat + 2;
                    print('$_fat');
                    if (_fat == 306.0) {
                      _fat = 300.0;
                    }
                    playSound();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
