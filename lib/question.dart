import 'package:flutter/material.dart';

class Question extends StatelessWidget {

 final String questionText;

 Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText, style:const TextStyle(
      fontSize: 25,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
    ),);
  }
}
