import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/feature/Wishlist/presentation/view_model/wishlist_cubit/wishlist_cubit.dart';
import 'package:quiz_app/feature/details/presentation/view/details_view.dart';
import 'package:quiz_app/feature/home/presentation/view/widget/category_item.dart';

class WishlistGridView extends StatelessWidget {
  const WishlistGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishListCubit, WishlistState>(
      builder: (context, state) {
        var cubit = WishListCubit.get(context);
        if (cubit.selectedWIshlist.isEmpty) {
          return const WarningMessage();
        } else {
          return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    (MediaQuery.of(context).size.width ~/ 200).toInt(),
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cubit.selectedWIshlist.length,
              itemBuilder: (BuildContext context, int index) {
                return CategoryItem(
                  category: cubit.selectedWIshlist[index],
                  onTap: () {
                    Get.to(
                      () => DetailsView(
                        category: cubit.selectedWIshlist[index],
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  onPressed: () {
                    cubit.delete(cubit.selectedWIshlist[index]);
                  },
                );
              });
        }
      },
    );
  }
}

class WarningMessage extends StatelessWidget {
  const WarningMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        'assets/img/no_data.json',
        height: 300,
      ),
    );
  }
}
