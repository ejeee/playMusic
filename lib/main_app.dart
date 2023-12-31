import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/routes/page_names.dart';
import 'package:flutter_application_1/app/routes/page_routes.dart';
import 'package:get/get.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: PageName.home,
      getPages: PageRoutes.pages,
    );
  }
}
