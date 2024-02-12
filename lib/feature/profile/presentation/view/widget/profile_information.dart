import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/text_style.dart';

class ProfileInformation extends StatelessWidget {
  final Map<String, dynamic> data;
  const ProfileInformation({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Personal Info",
              style: Style.textStyle20,
            ),
            const SizedBox(
              height: 15,
            ),
            TextWidget(
              title: "Your name",
              body: data["Username"] ?? "NullValue",
            ),
            TextWidget(
              title: "Your email",
              body: data["email"],
            ),
            TextWidget(
              title: "Your phone",
              body: data["phone"] ?? "NullValue",
            ),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String title;
  final String body;
  const TextWidget({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              color: Color(0xff3B3B3B),
              fontFamily: "Poppins",
            ),
          ),
          Text(
            body,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: "Poppins",
            ),
          ),
        ],
      ),
    );
  }
}
