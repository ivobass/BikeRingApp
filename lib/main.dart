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
       child:SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                  child: FlatButton(
                    child: Container(
                      child: Image.asset(
                        'assets/screwmini.png',
                        height: 20,
                        width: 20,
                      ),
                      width: _fat,
                      height: _fat,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          colors: const [
                            Colors.white70,
                            Colors.white60,
                            Colors.white70,
                            Colors.white60,
                            Colors.white60,
                            Colors.white60,
                            Colors.white38,
                            Colors.white,
                            Colors.white60,
                            Colors.grey,
                            Colors.white54,
                            Colors.white70,
                            Colors.white60,
                            Colors.white70,
                            Colors.white60,
                            Colors.white60,
                            Colors.white60,
                            Colors.white38,
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
              ),
            ],
          ),
        ),
    );
  }
}
