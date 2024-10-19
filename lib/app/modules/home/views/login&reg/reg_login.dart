import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'register_screen.dart';
import 'sign_in.dart';

class RegLoginScreen extends StatelessWidget {
  const RegLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                //height: double.maxFinite,
                color: Colors.green,
              ),
            ),
            Expanded(
              //flex: 1,
              child: Container(
                //height: double.maxFinite,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => RegisteScreen());
                        },
                        child: Container(
                          color: const Color.fromARGB(255, 93, 188, 98),
                          height: 50,
                          child: const Center(
                            child: Text(
                              "REGISTRATION",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => SignInScreen());
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1, color: Colors.green)),
                          child: const Center(
                            child: Text(
                              "SIGN IN",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
