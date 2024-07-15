import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/questions_screen.dart';


class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  Widget activeScreen = const StartScreen();

  void switchScreen() {
    setState((){
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build( context) {
    return
     MaterialApp(
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
          child: activeScreen,
        ),
      ),
    );
  }
}