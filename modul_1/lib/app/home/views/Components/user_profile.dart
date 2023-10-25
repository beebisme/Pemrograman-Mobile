import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul_1/app/modules/controllers/profile_controller.dart';

class UserProfile extends StatelessWidget {
  final ProfileController profileController = Get.put(ProfileController());

  UserProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10),
        child: Obx(() {
          if (profileController.selectedImage.value != null) {
            return CircleAvatar(
              backgroundImage:
                  FileImage(profileController.selectedImage.value!),
            );
          } else {
            return const CircleAvatar(
              backgroundImage: AssetImage("assets/photos/men.jpeg"),
            );
          }
        }));
  }
}
