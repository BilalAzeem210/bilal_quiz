// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
void main ()
{
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
  class _MyAppState extends State<MyApp> {
    final _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers' : [
    {'text':'Black','score':10},
    {'text':'Navy Blue','score':12},
    {'text':'Blue','score':9},
    {'text':'White','score':5}
        ],
      },

    {
    'questionText': 'What\'s your favorite animal?',
    'answers' : [
    {'text':'Dog','score':7},
    {'text':'Cat','score':14},
    {'text':'Cow','score':3},
    {'text':'Horse','score':6}]

    ,
  },
      {     'questionText': 'What\'s your favorite Game?',
        'answers' : [
      {'text':'Pubg','score':12},
      {'text':'FreeFire','score':4},
      {'text':'IGI','score':2},
      {'text':'Need For Speed','score':1}
      ],
      },
    ];


  var _questionIndex = 0;
  var _totalScore = 0;

  void _restartQuiz()
  {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
 void _answerQuestion (int score)
  {
    _totalScore += score;
   setState(() {
    _questionIndex = _questionIndex + 1;

   });
   print(_questionIndex);
   if(_questionIndex < _questions.length){
   print('We Have More Questions!');
   }
   else
   {
     print('No More Questions!');
     print(_totalScore);
   }
  }
  @override
  Widget build(BuildContext context) {

  return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
  appBar: AppBar(
  title: const Text('Quiz_App'),
  ),
  body: _questionIndex < _questions.length
    ? Quiz(
      answerQuestion: _answerQuestion,
      questionIndex: _questionIndex,
      questions: _questions)
      : Result(_totalScore , _restartQuiz),
  ),
  );
  }
  }

