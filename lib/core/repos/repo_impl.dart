import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quiz_app/core/error/failure.dart';
import 'package:quiz_app/core/repos/repo.dart';
import 'package:quiz_app/core/utils/api_services.dart';
import 'package:quiz_app/core/utils/exam_model/exam_model.dart';

class HomeRepoImpl implements HomeRepo {
  ApiServices apiServices;
  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<ExamModel>>> fetchExamQuestion() async {
    try {
      String baseUrl = "https://opentdb.com/api.php?";
      var data = await apiServices.get(
        endPoint:
            "${baseUrl}amount=10&category=9&difficulty=easy&type=multiple",
      );
      List<ExamModel> examQuestions = [];
      for (var exam in data["results"]) {
        examQuestions.add(ExamModel.fromJson(exam));
      }
      return right(examQuestions);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(
        ServerFailure(e.toString()),
      );
    }
  }
}
