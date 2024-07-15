import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget{
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Image.asset(
            'assets/images/quiz-logo.png', 
            width:300,
            color: Color.fromARGB(19, 255, 255, 255)
          ),
          const SizedBox(height: 80,),
          const Text(
            'Learn real good', 
            style: TextStyle(
              color: Color.fromARGB(255, 15, 80, 19),
              fontSize: 24
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 15, 80, 19),
            ),
            
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start'))
        ],
      ),
    );
  }
}
