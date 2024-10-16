import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  //accept and set summary data
  const QuestionsSummary(this.summaryData, {super.key});

  //summary from results screen, questions and correctness
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    //col for each question answer set
    //children takes list, but summary is already list
    return SizedBox(
      height: 300,
      child: SingleChildScrollView( //defined parameters, excess is scrollable
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(children: [
                //question index + 1 - index is object, needs to be casted as int, then returned as string
                Text(((data['question_index'] as int) + 1).toString()), 
                Expanded( //fixes overflow, can only be as tall or wide as the screens
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(
                        height: 5,
                        ),
                    Text(data['user_answer'] as String),
                    Text(data['correct_answer'] as String),
                  ],),
                ),
              ],);
            },
          ).toList(), //iterable object needed formatting (map->list)
        ),
      ),
    ); 
  }
}