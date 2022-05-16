import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Voice(),
      ),
    );
  }
}

class Voice extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    speak() async {
      await flutterTts.speak("Hello");
    }

    return Container(
      alignment: Alignment.center,
      child: RaisedButton(
        child: Text("Tap on this button."),
        onPressed: () => speak(),
      ),
    );
  }
}
