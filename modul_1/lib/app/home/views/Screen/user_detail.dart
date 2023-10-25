// ignore_for_file: unnecessary_null_comparison
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul_1/app/modules/controllers/profile_controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileScreenBody(),
    );
  }
}

class ProfileScreenBody extends StatelessWidget {
  ProfileScreenBody({Key? key}) : super(key: key);
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Obx(() {
            if (profileController.selectedImage.value != null) {
              return Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: FileImage(profileController.selectedImage.value!),
                      fit: BoxFit.cover),
                  color: Colors.grey, // Ganti warna sesuai kebutuhan
                  borderRadius: BorderRadius.circular(100.0),
                  // Mengatur sudut bulat
                ),
              );
            } else {
              return Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/photos/men.jpeg"),
                        fit: BoxFit.cover),
                    color: Colors.grey, // Ganti warna sesuai kebutuhan
                    borderRadius:
                        BorderRadius.circular(100.0), // Mengatur sudut bulat
                  ));
            }
          }),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Alexander Mondo",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    profileController.pickImageFromCamera();
                  },
                  child: const Text("Select From Camera")),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    profileController.pickImageFromGallery();
                  },
                  child: const Text("Select From Gallery")),
            ],
          ),
        ],
      )),
    );
  }
}
