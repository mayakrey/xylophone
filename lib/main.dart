import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int number) {
    final player = AudioPlayer();
    player.play(AssetSource('note$number.wav'));
  }

  Expanded createKey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero))),
          onPressed: () {
            playSound(soundNumber);
          },
          child: const Text('')),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          createKey(Colors.red, 1),
          createKey(Colors.orange, 2),
          createKey(Colors.yellow, 3),
          createKey(Colors.green, 4),
          createKey(Colors.teal, 5),
          createKey(Colors.blue, 6),
          createKey(Colors.purple, 7),
        ],
      ),
    ));
  }
}
