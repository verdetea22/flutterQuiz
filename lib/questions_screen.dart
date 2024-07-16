import 'package:flutter/material.dart';

import 'package:adv_basics/answer_button.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();  
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  Widget build(context){
    return SizedBox(
      width: double.infinity, //wide as possible
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question...', 
          style: TextStyle(
            color: Colors.amber
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: 'Answer 1',
             onTap: () {}
            ),
          AnswerButton(
            answerText: 'Answer 2',
             onTap: () {}
            ),
          AnswerButton(
            answerText: 'Answer 3',
             onTap: () {}
            ),
          AnswerButton(
            answerText: 'Answer 4',
             onTap: () {}
            ),
       ],
      ),
    );
  }
}
