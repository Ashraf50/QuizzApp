import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/model/category_model.dart';
import 'package:quiz_app/feature/details/presentation/view/widget/details_item.dart';

class DetailsViewBody extends StatelessWidget {
  final CategoryModel category;
  const DetailsViewBody({super.key, required this.category});

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
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    category.name,
                    style: Style.textStyle26,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DetailsItem(
                category: category,
              )
            ],
          ),
        ),
      ),
    );
  }
}
