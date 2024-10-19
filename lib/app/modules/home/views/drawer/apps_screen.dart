import 'package:flutter/material.dart';

import '../../customs/colors.dart';
import 'custom_darawer.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

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
            "Apps",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: const [
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
