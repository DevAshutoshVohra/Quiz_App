import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_questions.dart';


class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var curr=questions[0];

final currentQuestion=questions[0];
  @override
  Widget build(BuildContext context) {
     return Container(decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.amberAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center
            ,children:   [
            Text(curr.text),
            SizedBox(height:30),
            
            ...currentQuestion.answers.map((answer) =>  AnswerButton(ans: answer, checkAns:(){}))            
          ],),
        ),
     
    );
  }
}