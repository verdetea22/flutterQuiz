import 'package:flutter/material.dart';

import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/results_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

// _ for private classes
class _QuizState extends State<Quiz>{
  final List<String> _selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState((){
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer){
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length){ //once there is an answer for each question, reset selected ans list and bring to start
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build( context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
        );
    }

    if (activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(chosenAnswers: _selectedAnswers); //Lists
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(
            colors: [
              Colors.green, 
              Colors.white,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
           ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}