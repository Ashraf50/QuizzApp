import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/repos/repo_impl.dart';
import 'package:quiz_app/core/utils/api_services.dart';
import 'package:quiz_app/feature/exam_page/data/cubit/get_all_exam_question_cubit.dart';
import 'package:quiz_app/feature/exam_page/presentation/view/widget/exam_question_item.dart';

class ExamQuestionListView extends StatelessWidget {
  const ExamQuestionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: BlocProvider(
        create: (context) =>
            GetAllExamQuestionCubit(HomeRepoImpl(ApiServices(Dio())))
              ..fetchAllQuestion(),
        child: BlocBuilder<GetAllExamQuestionCubit, GetAllExamQuestionState>(
          builder: (context, state) {
            if (state is GetAllExamQuestionSuccess) {
              return PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.exam.length,
                itemBuilder: (context, index) {
                  return ExamQuestionItem(
                    index: index + 1,
                    total: state.exam.length,
                    exam: state.exam[index],
                  );
                },
              );
            } else if (state is GetAllExamQuestionFailure) {
              return Center(
                child: Text(state.errMessage),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
