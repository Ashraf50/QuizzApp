import 'package:flutter/material.dart';
import 'package:quiz_app/feature/Wishlist/presentation/view/widget/wishlist_item.dart';

class WishlistListView extends StatelessWidget {
  const WishlistListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const WishlistItem();
      },
    );
  }
}
