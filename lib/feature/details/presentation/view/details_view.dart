import 'package:flutter/material.dart';
import 'package:quiz_app/core/model/category_model.dart';
import 'package:quiz_app/feature/details/presentation/view/widget/details_view_body.dart';

class DetailsView extends StatelessWidget {
  final CategoryModel category;
  const DetailsView({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return DetailsViewBody(
      category: category,
    );
  }
}
