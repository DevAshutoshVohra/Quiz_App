import 'package:flutter/material.dart';
// this is screen 1

class StartScreen extends StatelessWidget {
  const StartScreen(this.startscr, {super.key});
  final void Function() startscr;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.amberAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/quiz.png',
                width: 300,
                color: const Color.fromARGB(167, 242, 234, 234),
              ),
              const SizedBox(height: 80),
              const Text(
                ' Learn Flutter the Fun Way ',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                icon: const Icon(Icons.arrow_circle_right),
                onPressed: () {
                  startscr();
                },
                label: const Text('Button'),
                style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
