import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/model/category_model.dart';
import 'package:quiz_app/feature/home/presentation/view/widget/category_grid_view.dart';
import 'package:quiz_app/feature/home/presentation/view/widget/search_text_field.dart';

class HomeViewBody extends StatefulWidget {
  final List<CategoryModel> category;
  const HomeViewBody({super.key, required this.category});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final searchController = TextEditingController();
  List<CategoryModel> filteredCategory = [];
  @override
  void initState() {
    super.initState();
    filteredCategory = widget.category;
  }

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
              const Text(
                "Home",
                style: Style.textStyle26,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFieldSearch(
                searchController: searchController,
                onChanged: (value) {
                  return searchCategory(value);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Categories",
                style: Style.textStyle16,
              ),
              const SizedBox(
                height: 10,
              ),
              CategoryGridView(
                category: filteredCategory,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void searchCategory(String query) {
    setState(() {
      filteredCategory = widget.category
          .where((category) => (category.name.toLowerCase().contains(query)))
          .toList();
    });
  }
}
