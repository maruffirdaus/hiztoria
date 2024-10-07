import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiztoria/answer_list.dart';
import 'package:hiztoria/question.dart';

class QuizPageLarge extends StatelessWidget {
  final double questionSectionWidth;
  final Question question;
  final int? selectedAnswer;
  final Function backButtonOnPressed;
  final Function(int index) answerListOnTap;
  final Function() nextButtonOnPressed;

  const QuizPageLarge({
    super.key,
    required this.questionSectionWidth,
    required this.question,
    this.selectedAnswer,
    required this.backButtonOnPressed,
    required this.answerListOnTap,
    required this.nextButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffe8b86d),
        floatingActionButton: FloatingActionButton.extended(
          label: Text(
            'Next',
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () => nextButtonOnPressed(),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: questionSectionWidth,
              child: SafeArea(
                  child: Stack(
                    children: [
                      Positioned.fill(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 32.0,
                                top: 72.0,
                                right: 32.0,
                                bottom: 16.0,
                              ),
                              child: Text(
                                question.name,
                                style: GoogleFonts.outfit(
                                  color: Colors.white,
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          style: IconButton.styleFrom(backgroundColor: Colors.white),
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Color(0xffe8b86d),
                          ),
                          onPressed: () => backButtonOnPressed(),
                        ),
                      ),
                    ],
                  )
              ),
            ),
            Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(32.0), bottomLeft: Radius.circular(32.0)),
                  ),
                  child: SafeArea(
                    child: AnswerList(
                        question.answers,
                        selectedAnswer: selectedAnswer,
                        itemMaxWidth: 600.0,
                        onTap: (int index) => answerListOnTap(index),
                    ),
                  ),
                )
            )
          ],
        ),
    );
  }
}