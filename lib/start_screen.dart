import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(123, 253, 251, 250),
          ),
          const SizedBox(height: 20),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 15),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right),
            label: const Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}
