import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/constant/colors.dart';
import 'package:quiz_app/core/model/category_model.dart';
import 'package:quiz_app/feature/Wishlist/presentation/view_model/wishlist_cubit/wishlist_cubit.dart';
import 'package:quiz_app/feature/details/presentation/view/details_view.dart';
import 'package:quiz_app/feature/home/presentation/view/widget/category_item.dart';

class CategoryGridView extends StatelessWidget {
  final List<CategoryModel> category;
  const CategoryGridView({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    var cubit = WishListCubit.get(context);
    return BlocBuilder<WishListCubit, WishlistState>(
      builder: (context, state) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width ~/ 200,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: category.length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryItem(
              category: category[index],
              onTap: () {
                Get.to(
                  () => DetailsView(
                    category: category[index],
                  ),
                );
              },
              icon: Icon(
                cubit.isSelected(category[index])
                    ? Icons.bookmark
                    : Icons.bookmark_border,
                color: purple,
              ),
              onPressed: () async {
                if (cubit.isSelected(category[index])) {
                  cubit.delete(category[index]);
                } else {
                  cubit.add(category[index]);
                }
              },
            );
          },
        );
      },
    );
  }
}
