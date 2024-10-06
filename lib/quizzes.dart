import 'package:hiztoria/question.dart';
import 'package:hiztoria/quiz.dart';

class Quizzes {
  static List<Quiz> get() {
    return [
      Quiz(
          name: 'World War II',
          description: 'A quiz about World War II',
          questions: [
            Question(
              name: 'Who is the winner of World War II?',
              answers: [
                'Axis',
                'Allies',
                'Central',
              ],
              correctAnswer: 1,
            ),
            Question(
              name: 'Which one is the member of Axis?',
              answers: [
                'Japan',
                'China',
                'Korea',
              ],
              correctAnswer: 0,
            ),
            Question(
              name: 'Who is the leader of Japan in World War II?',
              answers: [
                'Goku',
                'Saitama',
                'Hirohito',
                'Hashirama',
                'Madara'
              ],
              correctAnswer: 2,
            )
          ],
      ),
      Quiz(
        name: 'Indonesian History',
        description: 'A quiz about Indonesian history',
        questions: [
          Question(
            name: 'Who is the first president of Indonesia?',
            answers: [
              'Soekarno',
              'Mohammad Yamin',
              'Mohammad Hatta',
              'Ahmad Yani'
            ],
            correctAnswer: 0,
          ),
          Question(
            name: 'Where the Dutch–Indonesian Round Table Conference was held?',
            answers: [
              'Jakarta',
              'Tokyo',
              'Amsterdam',
              'Den Haag',
              'London'
            ],
            correctAnswer: 3,
          )
        ]
      )
    ];
  }
}