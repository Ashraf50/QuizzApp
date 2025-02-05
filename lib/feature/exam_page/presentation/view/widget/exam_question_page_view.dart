import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_app/core/model/category_model.dart';
import 'package:quiz_app/core/repos/repo_impl.dart';
import 'package:quiz_app/core/utils/api_services.dart';
import 'package:quiz_app/feature/exam_page/data/cubit/get_all_exam_question_cubit.dart';
import 'package:quiz_app/feature/exam_page/presentation/view/widget/exam_question_item.dart';

class ExamQuestionPageView extends StatefulWidget {
  final CategoryModel category;
  const ExamQuestionPageView({
    super.key,
    required this.category,
  });

  @override
  State<ExamQuestionPageView> createState() => _ExamQuestionPageViewState();
}

class _ExamQuestionPageViewState extends State<ExamQuestionPageView> {
  int pageIndex = 0;
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetAllExamQuestionCubit(HomeRepoImpl(ApiServices(Dio())))
            ..fetchAllQuestion(category: widget.category.categoryNum),
      child: BlocBuilder<GetAllExamQuestionCubit, GetAllExamQuestionState>(
        builder: (context, state) {
          if (state is GetAllExamQuestionSuccess) {
            return PageView.builder(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.exam.length,
              onPageChanged: (index) {
                setState(
                  () {
                    pageIndex = index;
                  },
                );
              },
              itemBuilder: (context, index) {
                return ExamQuestionItem(
                  controller: _controller,
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
    );
  }
}
