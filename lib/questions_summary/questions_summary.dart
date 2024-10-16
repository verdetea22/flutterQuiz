import 'package:flutter/material.dart';

import 'package:adv_basics/questions_summary/summary_item.dart';

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
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}