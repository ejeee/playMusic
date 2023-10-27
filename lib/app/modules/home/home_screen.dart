import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/home/home_controller.dart';
//import 'package:flutter_application_1/screen/nowplaying/nowplaying_screen.dart';
import 'package:flutter_application_1/app/routes/page_routes.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:palette_generator/palette_generator.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff091227),
      appBar: AppBar(
        backgroundColor: const Color(0xff091227),
        elevation: 0,
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {
        //     Scaffold.of(context).openDrawer();
        //   },
        // ),
        actions: [
          IconButton(
            icon: const Icon(IconlyLight.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        //navbar
        child: Container(
          padding: EdgeInsets.only(top: 80, left: 20),
          color: const Color(0xff091227),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                leading: Icon(IconlyLight.profile),
                iconColor: const Color(0xffEAF0FF),
                title: Text(
                  'Profil',
                  style: TextStyle(
                    color: const Color(0xffEAF0FF),
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Handle the action for this menu item
                  Get.toNamed(PageName.profil);
                },
              ),
              ListTile(
                leading: const Icon(IconlyLight.heart),
                iconColor: const Color(0xffEAF0FF),
                title: const Text(
                  'Liked Song',
                  style: TextStyle(
                    color: const Color(0xffEAF0FF),
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Handle the action for this menu item
                },
              ),
              ListTile(
                leading: Icon(IconlyLight.setting),
                iconColor: const Color(0xffEAF0FF),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: const Color(0xffEAF0FF),
                    fontSize: 18,
                  ),
                ),
                onTap: () {
                  // Handle the action for this menu item
                },
              ),
              // Add more menu items as needed
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recommended For You',
                style: TextStyle(
                  color: Color(0xffEAF0FF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildSongCard('assets/song1.jpg', 1),
                _buildSongCard('assets/song2.jpg', 2),
                _buildSongCard('assets/song3.jpg', 3),
                _buildSongCard('assets/song4.jpg', 4),
                _buildSongCard('assets/song5.jpg', 5),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSongCard(String imagePath, int songId) {
    return FutureBuilder<PaletteGenerator>(
      future: PaletteGenerator.fromImageProvider(AssetImage(imagePath)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // You can return a loading indicator or placeholder here
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // Handle the error
          return Text('Error: ${snapshot.error}');
        } else {
          final dominantColor = snapshot.data?.dominantColor?.color;
          return GestureDetector(
            onTap: () {
              Get.toNamed(PageName.nowplaying);
            },
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Stack(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        imagePath,
                        width: 170,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              dominantColor?.withOpacity(0.5) ??
                                  Colors.transparent,
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
