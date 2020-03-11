import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> quest;
  final int index;
  final Function answer1;

  Quiz({@required this.quest, @required this.answer1, @required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      //or we can use row
      children: [
        Question(
          quest[index]['questionText'],
        ),
        ...(quest[index]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answer1(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
