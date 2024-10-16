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
  var _activeScreen = 'start-screen';

  void _switchScreen() {
    setState((){
      _activeScreen = 'questions-screen';
    });
  }

  void _chooseAnswer(String answer){
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length){ //once there is an answer for each question, reset selected ans list and bring to start
      setState(() {
        _activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build( context) {
    Widget screenWidget = StartScreen(_switchScreen);

    if (_activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: _chooseAnswer,
        );
    }

    if (_activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(
        chosenAnswers: _selectedAnswers,
        onRestart: restartQuiz,  
      ); //Lists
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