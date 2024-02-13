class ExamModel {
  String? type;
  String? difficulty;
  String? category;
  String? question;
  String? correctAnswer;
  List<dynamic>? incorrectAnswers;

  ExamModel({
    this.type,
    this.difficulty,
    this.category,
    this.question,
    this.correctAnswer,
    this.incorrectAnswers,
  });

  factory ExamModel.fromJson(Map<String, dynamic> json) => ExamModel(
        type: json['type'] as String?,
        difficulty: json['difficulty'] as String?,
        category: json['category'] as String?,
        question: json['question'] as String?,
        correctAnswer: json['correct_answer'] as String?,
        incorrectAnswers: json['incorrect_answers'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'type': type,
        'difficulty': difficulty,
        'category': category,
        'question': question,
        'correct_answer': correctAnswer,
        'incorrect_answers': incorrectAnswers,
      };
}
