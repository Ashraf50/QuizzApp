import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/colors.dart';

class ChangePhotoIconButton extends StatelessWidget {
  final void Function()? choosePhoto;
  final void Function()? takePhoto;
  const ChangePhotoIconButton({
    super.key,
    required this.choosePhoto,
    required this.takePhoto,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.white,
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                height: 185,
                child: Column(
                  children: [
                    TextButton(
                      title: "Choose photo",
                      onTap: choosePhoto,
                    ),
                    const Divider(),
                    TextButton(
                      title: "Take photo",
                      onTap: takePhoto,
                    ),
                    const Divider(),
                    TextButton(
                      title: "Cancel",
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            shape: BoxShape.circle,
            color: purple),
        child: const Center(
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 22,
          ),
        ),
      ),
    );
  }
}

class TextButton extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  const TextButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: purple,
            ),
          ),
        ),
      ),
    );
  }
}
