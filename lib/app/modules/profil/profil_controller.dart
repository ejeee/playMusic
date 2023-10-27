import 'dart:io';

import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class ProfilController extends GetxController {
  RxString profilPictureUrl = "".obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();

    final appDocDir = await getApplicationDocumentsDirectory();
    final savedImagePath = '${appDocDir.path}/PP.jpg';

    var exist = await File(savedImagePath).exists();

    if (exist) profilPictureUrl.value = savedImagePath;
  }

  void updateProfilPicture(String newPictureUrl) {
    profilPictureUrl.value = newPictureUrl;
  }

  Future<String> saveImageToDisk(File image) async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final savedImagePath = '${appDocDir.path}/PP.jpg';

    try {
      await image.copy(savedImagePath);
      return savedImagePath;
    } catch (e) {
      print("Error saving image: $e");
      return "";
    }
  }
}
