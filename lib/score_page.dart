import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScorePage extends StatelessWidget {
  final int _score;

  const ScorePage(this._score, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe8b86d),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            width: 320.0,
            height: 320.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(32.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Your score',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          _score.toString(),
                          style: GoogleFonts.outfit(
                            fontSize: 96.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                    ),
                  ),
                  FilledButton(
                    child: Text(
                      'Finish',
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}