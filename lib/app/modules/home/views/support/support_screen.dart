import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:loyverse_pos_clone/app/modules/home/customs/colors.dart';

import '../drawer/custom_darawer.dart';
import 'help/help_screen.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(
          child: CustomDrawer(),
        ),
        appBar: AppBar(
          backgroundColor: appBarcolor,
          leading: Builder(
              builder: (context) => IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  )),
          title: const Text(
            "Support",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(() => HelpScren());
              },
              child: const ListTile(
                leading: Icon(Icons.help_outline),
                title: Text("Help"),
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
              leading: Icon(Icons.privacy_tip_outlined),
              title: Text("Lagal information"),
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
              leading: Icon(Icons.account_circle_outlined),
              title: Text("Account"),
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
