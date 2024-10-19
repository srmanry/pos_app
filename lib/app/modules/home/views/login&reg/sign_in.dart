import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'forgot_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          //actionsIconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
          title: const Text(
            'Sign in',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              //SizedBox(height: 30,),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Password", suffixIcon: Icon(Icons.visibility)),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  color: const Color.fromARGB(255, 93, 188, 98),
                  height: 50,
                  child: const Center(
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => ForgotScreen());
                },
                child: const Text(
                  'Forgot password ?',
                  style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 25, 109, 178)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
