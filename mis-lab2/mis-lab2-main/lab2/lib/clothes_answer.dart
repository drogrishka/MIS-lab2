import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget{
  String answerText;
  VoidCallback tapped;
  ClothesAnswer(this.tapped, this.answerText);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: tapped, 
      child: Text(answerText, textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.red),),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green)
      ); 
  }
}