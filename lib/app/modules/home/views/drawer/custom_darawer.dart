import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/receipts_page.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/settingsdart/settings_screen.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/home_screen.dart';

import '../support/support_screen.dart';
import 'apps_screen.dart';
import 'items/items_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.maxFinite,
            color: Colors.green,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Owner",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Text(
                      "POS 1",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  Text(
                    "name",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => HomeScreen());
            },
            child: const ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text("Sales"),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => ReceiptsScreen());
            },
            child: const ListTile(
              leading: Icon(Icons.event_note_outlined),
              title: Text("Receipts"),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => ItemsScreen());
            },
            child: const ListTile(
              leading: Icon(Icons.format_list_bulleted),
              title: Text("Items"),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => SettingsScreen());
            },
            child: const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text("Back office"),
          ),
          InkWell(
            onTap: () {
              Get.to(() => AppScreen());
            },
            child: const ListTile(
              leading: Icon(Icons.apps),
              title: Text("Apps"),
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(() => SupportScreen());
            },
            child: const ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("Support"),
            ),
          ),
        ],
      ),
    );
  }
}
