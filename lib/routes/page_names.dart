import 'package:flutter_application_1/modules/home/home_binding.dart';
import 'package:flutter_application_1/modules/home/home_screen.dart';
import 'package:flutter_application_1/modules/nowplaying/nowplaying_binding.dart';
import 'package:flutter_application_1/modules/nowplaying/nowplaying_screen.dart';
import 'package:flutter_application_1/modules/profil/profil_binding.dart';
import 'package:flutter_application_1/modules/profil/profil_screen.dart';
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
