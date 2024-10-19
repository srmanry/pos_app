import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/home_screen.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      title: "Application",
      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
      home: HomeScreen(),
    ),
  );
}
