import 'package:flutter/material.dart';

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
          const Text('The question...'),
          const SizedBox(height: 30),
        
          ElevatedButton(
            onPressed: () {}, 
            child: Text('Answer 1'),
            ),
        
          ElevatedButton(
            onPressed: () {}, 
            child: Text('Answer 1'),
            ),
        
          ElevatedButton(
            onPressed: () {}, 
            child: Text('Answer 1'),
            ),
        
          ElevatedButton(
            onPressed: () {}, 
            child: Text('Answer 1'),
            ),
        
          ElevatedButton(
            onPressed: () {}, 
            child: Text('Answer 1'),
            ),
       ],
      ),
    );
  }
}
