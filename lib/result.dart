import 'package:flutter/material.dart';

class Result extends StatelessWidget {
final int resultScore;
final VoidCallback selectHandler;
Result(this.resultScore, this.selectHandler);

String get resultPhrase {
  String resultText;
if(resultScore <=15){
  resultText = 'You are awesome and innocent';

}
else if(resultScore <=25 ){
  resultText = 'Pretty Likeable';

}
else if (resultScore <= 35){
    resultText = 'You are Strange';

}
else
{
  resultText = 'You are so bad';

}
  return resultText;
  print(resultScore);
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(resultPhrase,
        style: const TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
    ),
          TextButton(onPressed: selectHandler, child: const Text('Restart Quiz',
          style:  TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),))
  ],
      ),
    );
  }
}
