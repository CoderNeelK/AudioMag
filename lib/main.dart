import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() {
  runApp(
      XyloPhone()
  );
}
class XyloPhone extends StatelessWidget {
int s =1;
Color color =Colors.white;

  Expanded buildKey({required Color color ,required int s}){
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: color),
          onPressed: () {
            playsound(s);
          }, child: Text('')
      ),
    );
  }
  void playsound(int n)
  {
    final player = AudioCache();
    player.play('assets_note$n.wav');
  }

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red , s : 1),
              buildKey(color: Colors.orange , s : 2),
              buildKey(color: Colors.yellow , s : 3),
              buildKey(color: Colors.green , s : 4),
              buildKey(color: Colors.teal , s : 5),
              buildKey(color: Colors.blue , s : 6),
              buildKey(color: Colors.purple , s : 7),
            ],
            )
          )
      ),
    );
  }
}