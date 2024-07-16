import 'package:flutter/material.dart';

import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();  
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  Widget build(context){
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity, //wide as possible
      child: Container(
        margin: const EdgeInsets.all(40), //padding of answer buttons
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text, 
              style: const TextStyle(
                color: Colors.amber
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            // ... adds multiple individual values to already created lists [[1,2,3],4] -> [1,2,3,4]
            ...currentQuestion.getShuffledAnswers().map((answer){ //map() yields an Iterable (list)
              return AnswerButton(answerText: answer, onTap:() {});
            })
         ],
        ),
      ),
    );
  }
}
