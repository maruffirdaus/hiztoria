import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiztoria/quiz.dart';

class QuizList extends StatelessWidget {
  final List<Quiz> _quizzes;
  final double itemMaxWidth;
  final Function(Quiz quiz) onTap;

  const QuizList(this._quizzes, {super.key, required this.itemMaxWidth, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Quiz quiz = _quizzes[index];
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              left: 32.0,
              top: (index == 0) ? 32.0 : 0,
              right: 32.0,
              bottom: (index == _quizzes.length-1) ? 32.0 : 16,
            ),
            child: Center(
              child: InkWell(
                onTap: () => onTap(quiz),
                child: Card(
                  color: const Color(0xfffafafa),
                  child: SizedBox(
                    width: itemMaxWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            quiz.name,
                            style: GoogleFonts.outfit(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            quiz.description,
                            style: const TextStyle(
                              fontSize: 12.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: _quizzes.length,
    );
  }
}