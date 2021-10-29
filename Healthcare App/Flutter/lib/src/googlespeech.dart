import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:highlight_text/highlight_text.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:google_speech/google_speech.dart';


class GoogleSpeech extends StatefulWidget {
  @override
  _GoogleSpeechState createState() => _GoogleSpeechState();
}

class _GoogleSpeechState extends State<GoogleSpeech> {
  final Map<String, HighlightedWord> _highlights = {
    'image': HighlightedWord(
      onTap: () => print('image'),
      textStyle: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    ),
    'voice': HighlightedWord(
      onTap: () => print('voice'),
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
    'vegetable': HighlightedWord(
      onTap: () => print('vegetable'),
      textStyle: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    'meal': HighlightedWord(
      onTap: () => print('meal'),
      textStyle: const TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold,
      ),
    ),
    'recipes': HighlightedWord(
      onTap: () => print('recipes'),
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
  };

  stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Press the button and start speaking';
  double _confidence = 1.0;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
            'Google Voice',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
            color: Colors.blueAccent
          )
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: _isListening,
        glowColor: Theme.of(context).primaryColor,
        endRadius: 75.0,
        duration: const Duration(milliseconds: 2000),
        repeatPauseDuration: const Duration(milliseconds: 100),
        repeat: true,
        child: FloatingActionButton(
          onPressed: _listen,
          child: Icon(_isListening ? Icons.mic : Icons.mic_none),
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
          child: TextHighlight(
            text: _text,
            words: _highlights,
            textStyle: const TextStyle(
              fontSize: 32.0,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('onStatus: $val'),
        onError: (val) => print('onError: $val'),
        debugLogging: true,
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
            }
            if (_text.contains('avocado')) {
              Navigator.pushNamed(context, '/avocado');}
            if (_text.contains('beetroot')) {
              Navigator.pushNamed(context, '/beetroot');}
            if (_text.contains('broccoli')) {
              Navigator.pushNamed(context, '/broccoli');}
            if (_text.contains('cabbage')) {
              Navigator.pushNamed(context, '/cabbage');}
            if (_text.contains('carrot')) {
              Navigator.pushNamed(context, '/carrot');}
            if (_text.contains('corn')) {
              Navigator.pushNamed(context, '/corn');}
            if (_text.contains('lemon')) {
              Navigator.pushNamed(context, '/lemon');}
            if (_text.contains('pepper')) {
              Navigator.pushNamed(context, '/pepper');}
            if (_text.contains('spinach')) {
              Navigator.pushNamed(context, '/spinach');}
            if (_text.contains('tomato')) {
              Navigator.pushNamed(context, '/tomato');}
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }
}