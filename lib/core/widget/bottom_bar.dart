import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/colors.dart';
import 'package:quiz_app/feature/Wishlist/presentation/view/wishlist_view.dart';
import 'package:quiz_app/feature/home/presentation/view/home_view.dart';
import 'package:quiz_app/feature/profile/presentation/view/profile_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  changeItem(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  List pages = [
    const HomeView(),
    const WishlistView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account",
          ),
        ],
        currentIndex: currentIndex,
        onTap: changeItem,
        selectedItemColor: purple,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
