import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class QuestionsScreen extends StatefulWidget{
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();  
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{
  var currentQuestionIndex = 0; 

  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);

    setState((){
      currentQuestionIndex++; //needs to iterate through questions, then stop once exhausted
    });
  }

  @override
  Widget build(context){
    final currentQuestion = questions[currentQuestionIndex];

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
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            const SizedBox(height: 30),
            // ... adds multiple individual values to already created lists [[1,2,3],4] -> [1,2,3,4]
            ...currentQuestion.getShuffledAnswers().map((answer){ //map() yields an Iterable (list)
              return AnswerButton(
                answerText: answer, 
                onTap: (){
                  answerQuestion(answer);
                },
              );
            })
         ],
        ),
      ),
    );
  }
}

//74