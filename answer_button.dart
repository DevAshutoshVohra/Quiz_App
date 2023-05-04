import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.ans, required this.checkAns});

  final Function() checkAns;
  final String ans;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: checkAns,
      child: Text(ans),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
