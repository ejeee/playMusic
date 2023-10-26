import 'package:flutter_application_1/screen/home/home_binding.dart';
import 'package:flutter_application_1/screen/home/home_screen.dart';
import 'package:flutter_application_1/screen/nowplaying/nowplaying_binding.dart';
import 'package:flutter_application_1/screen/nowplaying/nowplaying_screen.dart';
import 'package:flutter_application_1/screen/profil/profil_binding.dart';
import 'package:flutter_application_1/screen/profil/profil_screen.dart';
import 'package:flutter_application_1/routes/page_routes.dart';
import 'package:get/get.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: PageName.nowplaying,
      page: () => const NowPlaying(),
      binding: NowPlayingBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: PageName.profil,
      page: () => ProfilScreen(),
      binding: ProfilBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 250),
    ),
  ];
}
