import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: data['correct_answer'] == data['user_answer']
                            ? const Color.fromARGB(189, 68, 137, 255)
                            : const Color.fromARGB(180, 255, 64, 128),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data['user_answer'] as String,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 236, 133, 167),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 117, 180, 231),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
