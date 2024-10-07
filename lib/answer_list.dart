import 'package:flutter/material.dart';

class AnswerList extends StatelessWidget {
  final List<String> _answers;
  final int? selectedAnswer;
  final double itemMaxWidth;
  final Function(int index) onTap;

  const AnswerList(this._answers, {super.key, required this.selectedAnswer, required this.itemMaxWidth, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final String answer = _answers[index];
        return Padding(
          padding: EdgeInsets.only(
            left: 32.0,
            top: (index == 0) ? 32.0 : 0,
            right: 32.0,
            bottom: (index == _answers.length-1) ? 104 : 16,
          ),
          child: Center(
            child: InkWell(
              onTap: () => onTap(index),
              child: Card(
                color: (selectedAnswer == index) ? const Color(0xffd4d4d4) : const Color(0xfffafafa),
                child: SizedBox(
                  width: itemMaxWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      answer,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: _answers.length,
    );
  }
}