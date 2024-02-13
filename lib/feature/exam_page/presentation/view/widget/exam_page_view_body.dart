import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/model/category_model.dart';
import 'package:quiz_app/core/widget/custom_app_bar.dart';
import 'package:quiz_app/feature/exam_page/presentation/view/widget/exam_question_list_view.dart';

class ExamPageViewBody extends StatelessWidget {
  final CategoryModel category;
  const ExamPageViewBody({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 20,
              ),
              CustomAppBar(
                title: category.name,
                style: Style.textStyle20,
              ),
              const SizedBox(
                height: 20,
              ),
              const ExamQuestionListView(),
            ],
          ),
        ),
      ),
    );
  }
}
