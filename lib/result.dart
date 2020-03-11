import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset1;

  Result(this.resultScore,this.reset1);

  String get resultPhrase{
    String resultText;
    if(resultScore<=8)
    {
      resultText = 'You are awesoe and innocent';
    }
    else if(resultScore<=12){
      resultText = 'preety likable';
    }
    else if (resultScore<=16){
      resultText = 'You are .........Strange';
    }
    else {
      resultText = 'Sorry Dude not Likable';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            FlatButton(child: Text('Restart Quiz!!'),onPressed:reset1 ,)
          ],
        ),
      ),
    );
  }
}
