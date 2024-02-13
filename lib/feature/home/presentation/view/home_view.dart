import 'package:flutter/material.dart';
import 'package:quiz_app/core/model/category_model.dart';
import 'package:quiz_app/feature/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeViewBody(category: allCategories);
  }
}
