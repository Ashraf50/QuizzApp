import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/feature/profile/presentation/view/widget/camera_icon_button.dart';
import 'package:quiz_app/feature/profile/presentation/view/widget/profile_information.dart';
import 'package:quiz_app/feature/profile/presentation/view/widget/photo_view.dart';
import 'package:quiz_app/feature/profile/presentation/view_model/cubit/image_cubit.dart';

class CustomPhoto extends StatelessWidget {
  final Map<String, dynamic> data;
  const CustomPhoto({
    super.key,
    required this.data,
  });
  @override
  Widget build(BuildContext context) {
    var cubit = ImageCubit.get(context);
    return Column(
      children: [
        Stack(
          children: [
            cubit.imgPath == null
                ? data["photoUrl"] == null
                    ? CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        maxRadius: 50,
                        backgroundImage: const AssetImage(
                          "assets/avatar.png",
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 8,
                            color: const Color(0xffd2cbec),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            Get.to(
                              PhotoViewer(
                                image: data["photoUrl"],
                              ),
                            );
                          },
                          child: CircleAvatar(
                            maxRadius: 50,
                            backgroundImage: NetworkImage(
                              data["photoUrl"],
                            ),
                          ),
                        ),
                      )
                : Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 8,
                        color: const Color(0xffd2cbec),
                      ),
                    ),
                    child: ClipOval(
                      child: Image.file(
                        cubit.imgPath!,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
            Positioned(
              bottom: -2,
              right: -2,
              child: ChangePhotoIconButton(
                choosePhoto: () {
                  cubit.choosePhoto();
                  Navigator.pop(context);
                },
                takePhoto: () {
                  cubit.takePhoto();
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        ProfileInformation(
          data: data,
        )
      ],
    );
  }
}
