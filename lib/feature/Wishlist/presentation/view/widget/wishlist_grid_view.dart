import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:quiz_app/feature/Wishlist/presentation/view_model/wishlist_cubit/wishlist_cubit.dart';
import 'package:quiz_app/feature/details/presentation/view/details_view.dart';
import 'package:quiz_app/feature/home/presentation/view/widget/category_item.dart';

class WishlistGridView extends StatelessWidget {
  const WishlistGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WIshlistCubit, WIshlistState>(
      builder: (context, state) {
        var cubit = WIshlistCubit.get(context);
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: cubit.selectedWIshlist.length,
          itemBuilder: (BuildContext context, int index) {
            return CategoryItem(
              category: cubit.selectedWIshlist[index],
              onTap: () {
                Get.to(
                  () => DetailsView(category: cubit.selectedWIshlist[index]),
                );
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.grey,
              ),
              onPressed: () {
                cubit.delete(cubit.selectedWIshlist[index]);
              },
            );
          },
        );
      },
    );
  }
}
