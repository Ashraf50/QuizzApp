import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quiz_app/core/constant/colors.dart';
import 'package:quiz_app/core/constant/text_style.dart';
import 'package:quiz_app/core/model/category_model.dart';
import 'package:quiz_app/core/widget/custom_button.dart';
import 'package:quiz_app/feature/exam_page/presentation/view/exam_page_view.dart';

class DetailsItem extends StatelessWidget {
  final CategoryModel category;
  const DetailsItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                category.image,
                width: 100,
              ),
              Column(
                children: [
                  Text(
                    category.name,
                    style: Style.textStyle16,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    onTap: () {
                      Get.to(() => ExamPageView(category: category));
                    },
                    color: purple,
                    title: "Start Test",
                    width: 161,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
