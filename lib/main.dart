import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main(){
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore = 0;

  void _resetQuiz()
  {
    setState(() {
      _index = 0;
      _totalScore = 0;
    });
  }




  
  void _answer(int score) {
    _totalScore +=score;
    setState(() {
      _index += 1;
    });

    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    final _quest = [
      {
        'questionText': "what\'s your fav colour?",
        'answer': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1}
        ]
      },
      {
        'questionText': "What\'s your fav animal?",
        'answer': [
          {'text': 'Dog', 'score': 2},
          {'text': 'Cat', 'score': 10},
          {'text': 'Horse', 'score': 3},
          {'text': 'Lion', 'score': 1}
        ]
      },
      {
        'questionText': "What\'s your fav hobby?",
        'answer': [
          {'text': 'Reading', 'score': 3},
          {'text': 'Dancing', 'score': 4},
          {'text': 'Singing', 'score': 5},
          {'text': 'playing', 'score': 1}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Personality Quiz"),
        ),
        body: _index < _quest.length
            ? Quiz(
                quest: _quest,
                answer1: _answer,
                index: _index,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
