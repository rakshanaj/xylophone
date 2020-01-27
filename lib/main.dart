import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int x){
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildKey(Color c,int x){
    return Expanded(
      child: FlatButton(
        color: c,
        onPressed: (){
          playSound(x);
        },
        child: Text('note$x play'),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(Colors.red,1),
                buildKey(Colors.orange,2),
                buildKey(Colors.yellow,3),
                buildKey(Colors.green,4),
                buildKey(Colors.blue,5),
                buildKey(Colors.indigo,6),
                buildKey(Colors.purple,7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
