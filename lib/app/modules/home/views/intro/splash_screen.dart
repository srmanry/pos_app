import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/home_view.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/intro/intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    whereTogo();

    super.initState();
  }

  Future<void> whereTogo() async {
    // var sharedPref = await SharedPreferences.getInstance();

    // bool islogin = sharedPref.getBool("islogin") ?? false;
    Future.delayed(
      const Duration(seconds: 5),
      () {
        //Get.to(() => HomeView());
        Get.to(IntoScreen());
        // if (islogin) {
        //   Get.offAllNamed(Routes.FRIST_SCREEN);
        // } else {
        //   Get.offAllNamed(Routes.LOGIN_VIEW);
        // }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/splashlogo.png",
                    height: 80, width: 100, fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
