import 'package:flutter/material.dart';
import 'package:quiz_app/core/model/category_model.dart';
import 'package:quiz_app/feature/home/presentation/view/widget/category_item.dart';

class CategoryGridView extends StatelessWidget {
  final List<CategoryModel> category;
  const CategoryGridView({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: category.length,
      itemBuilder: (BuildContext context, int index) {
        return CategoryItem(
          category: category[index],
          onPressed: () {
            print(index);
          },
          icon: const Icon(Icons.bookmark_border),
          onTap: () {},
        );
      },
    );
  }
}
