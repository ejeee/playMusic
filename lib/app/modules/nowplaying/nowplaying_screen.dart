import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/nowplaying/nowplaying_controller.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Circular image for the current music playback
            ClipOval(
              child: Container(
                width: 150, // Adjust the size of the circular image
                height: 150, // Adjust the size of the circular image
                child: Image.asset(
                  'assets/song1.jpg', // Replace with the actual image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16), // Add some vertical spacing
            // Other widgets related to the current music playback
          ],
        ),
      ),
    );
  }
}
