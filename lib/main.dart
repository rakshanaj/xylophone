import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int x){
    final player = AudioCache();
    player.play('note$x.wav');
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
                Expanded(
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: (){
                      playSound(1);
                    },
                    child: Text('note1 play'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.indigo,
                    onPressed: (){
                      playSound(2);
                    },
                    child: Text('note2 play'),

                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: (){
                      playSound(3);
                    },
                    child: Text('note3 play'),

                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: (){
                      playSound(4);

                    },
                    child: Text('note4 play'),

                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.yellow,
                    onPressed: (){
                      playSound(5);
                    },
                    child: Text('note5 play'),

                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.orange,
                    onPressed: (){
                      playSound(6);
                    },
                    child: Text('note6 play'),

                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: (){
                      playSound(7);
                    },
                    child: Text('note7 play'),

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
