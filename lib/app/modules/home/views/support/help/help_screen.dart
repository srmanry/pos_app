import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:loyverse_pos_clone/app/modules/home/customs/colors.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/support/support_screen.dart';

class HelpScren extends StatelessWidget {
  const HelpScren({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Get.to(() => const SupportScreen());
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          backgroundColor: appBarcolor,
          title: const Text("Help"),
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(() => HelpScren());
              },
              child: const ListTile(
                leading: Icon(Icons.chat),
                title: Text("Live chat"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Container(
                width: double.maxFinite,
                color: Colors.grey[300],
                height: 1,
              ),
            ),
            const ListTile(
              leading: Icon(Icons.help),
              title: Text("Help center"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Container(
                width: double.maxFinite,
                color: Colors.grey[300],
                height: 1,
              ),
            ),
            const ListTile(
              leading: Icon(Icons.chat_bubble_outline_outlined),
              title: Text("Community"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Container(
                width: double.maxFinite,
                color: Colors.grey[300],
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
