import 'package:equatable/equatable.dart';

class ExamModel extends Equatable {
  const ExamModel({
    required this.category,
    required this.difficulty,
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  final String category;
  final String difficulty;
  final String question;
  final String correctAnswer;
  final List<String> answers;

  @override
  List<Object?> get props => [
        answers,
        correctAnswer,
        question,
        category,
        difficulty,
      ];

  factory ExamModel.fromMap(Map<String, dynamic> map) {
    return ExamModel(
      category: map['category'] ?? '',
      difficulty: map['difficulty'] ?? '',
      question: map['question'] ?? '',
      correctAnswer: map['correct_answer'] ?? '',
      answers: List<String>.from(map['incorrect_answers'] ?? [])
        ..add(map['correct_answer'] ?? '')
        ..shuffle(),
    );
  }
}

// class ExamModel {
//   String? type;
//   String? difficulty;
//   String? category;
//   String? question;
//   String? correctAnswer;
//   List<dynamic>? incorrectAnswers;

//   ExamModel({
//     this.type,
//     this.difficulty,
//     this.category,
//     this.question,
//     this.correctAnswer,
//     this.incorrectAnswers,
//   });

//   factory ExamModel.fromJson(Map<String, dynamic> json) => ExamModel(
//         type: json['type'] as String?,
//         difficulty: json['difficulty'] as String?,
//         category: json['category'] as String?,
//         question: json['question'] as String?,
//         correctAnswer: json['correct_answer'] as String?,
//         incorrectAnswers: json['incorrect_answers'] as List<dynamic>?,
//       );

//   Map<String, dynamic> toJson() => {
//         'type': type,
//         'difficulty': difficulty,
//         'category': category,
//         'question': question,
//         'correct_answer': correctAnswer,
//         'incorrect_answers': incorrectAnswers,
//       };
// }

