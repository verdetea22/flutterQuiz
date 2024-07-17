

import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget{
  ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('You answered '),
            const SizedBox(height: 30,),
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