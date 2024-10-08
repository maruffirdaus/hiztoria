import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hiztoria/quiz.dart';
import 'package:hiztoria/quiz_list.dart';
import 'package:hiztoria/quiz_page.dart';
import 'package:hiztoria/quizzes.dart';

class HomePageSmall extends StatelessWidget {
  const HomePageSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8b86d),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 32.0),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Hiztoria',
                        style: GoogleFonts.playball(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 64.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Center(
                      child: Text(
                        'Strengthen your understanding of history with quizzes',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(32.0), topRight: Radius.circular(32.0)),
                    ),
                    child: SafeArea(
                      child: QuizList(
                        Quizzes.get(),
                        itemMaxWidth: 400.0,
                        onTap: (Quiz quiz) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return QuizPage(quiz);
                          }));
                        },
                      ),
                    ),
                  )
              )
            ],
          )
      ),
    );
  }
}