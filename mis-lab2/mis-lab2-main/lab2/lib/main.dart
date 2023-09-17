import 'package:flutter/material.dart';

import './clothes_question.dart';
import './clothes_answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{

  void _iWasTapped() {
    setState(() {
        _questionIndex += 1;  
    });
    print("i was tapped");
  }
 
  var questions = [
    {'question' : "Select clothes",
    'answer' : ['dress', 'shirt, trousers', 't-shirt, jeans']},
    {'question' : "Select shoes",
    'answer' : ['sandals', 'trainers', 'boots', 'heels', 'shoes']},
    {'question' : "Select coat",
    'answer' : ['jacket', 'mantil']},
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'].toString()),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            })
          ],)
      )
    );
  }
}
