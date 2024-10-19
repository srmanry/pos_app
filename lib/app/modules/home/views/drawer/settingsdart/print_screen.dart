import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/custom_darawer.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/items/items_page.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/settingsdart/createprint_screen.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/settingsdart/settings_screen.dart';

class PrintScreen extends StatelessWidget {
  const PrintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(
          child: CustomDrawer(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
              onPressed: () {
                Get.to(() => SettingsScreen());
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: const Row(
            children: [
              Text(
                "Print screen",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          // actions: const [
          //   Icon(
          //     Icons.search,
          //     color: Colors.white,
          //   ),
          //   SizedBox(
          //     width: 15,
          //   ),
          // ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.print,
                  size: 80,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "You have no items yet",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "To  add the item,press the (+) buttonS",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            //foregroundColor: Colors.green,
            backgroundColor: Colors.green,
            onPressed: () {
              Get.to(() => CreatePinterScreen());
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
    );
  }
}
