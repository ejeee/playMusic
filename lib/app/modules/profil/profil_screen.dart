import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profil_controller.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';

class ProfilScreen extends StatelessWidget {
  final ProfilController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff091227),
      appBar: AppBar(
        backgroundColor: const Color(0xff091227),
        title: const Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () => CircleAvatar(
                radius: 80,
                backgroundImage: controller.profilPictureUrl.value.isNotEmpty
                    ? FileImage(File(controller.profilPictureUrl.value))
                    : const AssetImage("assets/song1.jpg") as ImageProvider,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showImagePickerDialog(context);
              },
              child: const Text("Ubah Foto Profil"),
            ),
          ],
        ),
      ),
    );
  }

  void _showImagePickerDialog(BuildContext context) async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      // Mendapatkan ImageService
      final savedImagePath = await controller.saveImageToDisk(File(image.path));
      controller.updateProfilPicture(savedImagePath);
    } else {}
  }
}
