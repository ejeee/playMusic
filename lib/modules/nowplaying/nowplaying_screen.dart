import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/nowplaying/nowplaying_controller.dart';
//import 'package:flutter_application_1/routes/page_routes.dart';
import 'package:get/get.dart';

class NowPlaying extends GetView<NowPlayingController> {
  const NowPlaying({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff091227),
      appBar: AppBar(
        title: const Text('Now Playing'),
        backgroundColor: const Color(0xff091227),
        elevation: 0,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget for current music playback
          ],
        ),
      ),
    );
  }
}
