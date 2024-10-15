import 'package:flutter/material.dart';

import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';


class ResultsScreen extends StatelessWidget{
  const ResultsScreen({
    super.key, 
    required this.chosenAnswers,
    });

  final List<String> chosenAnswers;

  //map are collections of key/value pairs (Map<K,V>)
  // could also use get summaryData, then not call it as a method
  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];
  
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0], //first answer in set is correct one for this test
        'user_answer': chosenAnswers[i] 
        },
      );
    } 

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length; 

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('You answered $numCorrectQuestions out of $numTotalQuestions correctly! '),
            const SizedBox(height: 30,),
            QuestionsSummary(summaryData), //not passed as a value
            const Text('List of ans'),
            const SizedBox(height: 30,),
            TextButton(
              onPressed: () {},
              child: const Text('Restart'),
            )
          ],
        ),
      ),
    );
  }
}