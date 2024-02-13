import 'package:flutter/material.dart';
import 'package:quiz_app/core/model/category_model.dart';
import 'package:quiz_app/feature/exam_page/presentation/view/widget/exam_page_view_body.dart';

class ExamPageView extends StatelessWidget {
  final CategoryModel category;
  const ExamPageView({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return ExamPageViewBody(
      category: category,
    );
  }
}
