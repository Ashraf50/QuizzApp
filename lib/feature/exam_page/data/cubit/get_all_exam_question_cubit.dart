import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/repos/repo.dart';
import 'package:quiz_app/core/model/exam_model.dart';

part 'get_all_exam_question_state.dart';

class GetAllExamQuestionCubit extends Cubit<GetAllExamQuestionState> {
  GetAllExamQuestionCubit(this.homeRepo) : super(GetAllExamQuestionInitial());
  final HomeRepo homeRepo;
  Future<void> fetchAllQuestion({required String category}) async {
    emit(GetAllExamQuestionLoading());
    var result = await homeRepo.fetchExamQuestion(category: category);
    result.fold(
      (failure) {
        emit(
          GetAllExamQuestionFailure(errMessage: failure.errMessage),
        );
      },
      (exam) {
        emit(
          GetAllExamQuestionSuccess(exam: exam),
        );
      },
    );
  }
}
