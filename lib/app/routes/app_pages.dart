import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/intro/intro_screen.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/intro/splash_screen.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => IntoScreen(),
      // binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      // binding: HomeBinding(),
    ),
  ];
}
