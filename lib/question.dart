import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final should be added to the property of the statreless classes
  // so that its value do not change once the constructor is started
  final String questext;
//precision argument
  Question(this.questext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin: EdgeInsets.all(10),
      child:Text(
        questext,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
