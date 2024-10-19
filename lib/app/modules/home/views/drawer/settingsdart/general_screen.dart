import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/items/items_page.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/settingsdart/settings_screen.dart';

import 'layout_screen.dart';

class GeneralScreen extends StatelessWidget {
  GeneralScreen({super.key});
  var bodytext = TextStyle(fontSize: 16, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green,
          leading: IconButton(
              onPressed: () {
                Get.to(() => const SettingsScreen());
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: const Row(
            children: [
              Text(
                "General",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "User camera to scan barcodes",
                      style: bodytext,
                    ),
                    const Icon(Icons.toggle_off_outlined),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Drak Theme',
                      style: bodytext,
                    ),
                    const Icon(Icons.toggle_off_outlined),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => LayOutScreen());
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Home screen item layout',
                        style: bodytext,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
