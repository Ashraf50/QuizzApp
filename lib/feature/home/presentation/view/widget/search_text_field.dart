import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/colors.dart';
import 'package:quiz_app/core/constant/text_style.dart';

class TextFieldSearch extends StatelessWidget {
  final TextEditingController searchController;
  final void Function(String)? onChanged;
  const TextFieldSearch({
    super.key,
    required this.searchController,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        style: Style.textStyle16,
        controller: searchController,
        decoration: InputDecoration(
          hintText: "Search for category",
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: purple),
          ),
          // border: InputBorder.none,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
