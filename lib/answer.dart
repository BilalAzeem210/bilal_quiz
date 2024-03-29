
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

 final VoidCallback selectHandler;
 final String answerText;

     Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
      ),

    onPressed: selectHandler,
    child:  Text(answerText,
    style: const TextStyle (
    fontSize: 20,
    fontStyle: FontStyle.italic,
    ),)),
    );
  }
}
