import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/custom_darawer.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/settingsdart/general_screen.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/settingsdart/taxes_screen.dart';

import '../items/items_page.dart';
import 'print_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(
          child: CustomDrawer(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: Builder(
              builder: (context) => IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )),
          title: const Row(
            children: [
              Text(
                "Settings",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(const PrintScreen());
              },
              child: const ListTile(
                leading: Icon(Icons.print),
                title: Text('Printers'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Container(
                height: 1,
                width: double.maxFinite,
                color: Colors.grey,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(() => TaxesScreen());
              },
              child: const ListTile(
                leading: Icon(Icons.percent),
                title: Text('Taxes'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Container(
                height: 1,
                width: double.maxFinite,
                color: Colors.grey,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(GeneralScreen());
                // Get.to(() => AddDiscountScreen());
              },
              child: const ListTile(
                leading: Icon(Icons.settings),
                title: Text('General'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 1,
                width: double.maxFinite,
                color: Colors.grey,
              ),
            ),
            Container(
              height: 100,
              color: Colors.grey[200],
              child: const Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('More settings are available in the Back Office'),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'GO TO BACK OFFICE',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'GOT IT',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Spacer(),
            const Text("showumail@gmail.com"),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.maxFinite,
                height: 50,
                color: Colors.grey[200],
                child: const Center(child: Text("SIGN OUT")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
