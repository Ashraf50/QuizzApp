part of 'get_all_exam_question_cubit.dart';

sealed class GetAllExamQuestionState {}

final class GetAllExamQuestionInitial extends GetAllExamQuestionState {}

final class GetAllExamQuestionLoading extends GetAllExamQuestionState {}

final class GetAllExamQuestionSuccess extends GetAllExamQuestionState {
  final List<ExamModel> exam;
  GetAllExamQuestionSuccess({
    required this.exam,
  });
}

final class GetAllExamQuestionFailure extends GetAllExamQuestionState {
  final String errMessage;
  GetAllExamQuestionFailure({
    required this.errMessage,
  });
}
