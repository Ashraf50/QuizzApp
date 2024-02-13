import 'package:dartz/dartz.dart';
import 'package:quiz_app/core/error/failure.dart';
import 'package:quiz_app/core/utils/exam_model/exam_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ExamModel>>> fetchExamQuestion();
}
