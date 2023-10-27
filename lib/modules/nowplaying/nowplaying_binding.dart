import 'package:flutter_application_1/modules/nowplaying/nowplaying_controller.dart';
import 'package:get/get.dart';

class NowPlayingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NowPlayingController>(
      NowPlayingController(),
    );
  }
}
