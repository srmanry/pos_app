import 'package:flutter/material.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/custom_darawer.dart';

import 'appbar_wiget.dart';

class ReceiptsScreen extends StatelessWidget {
  const ReceiptsScreen({super.key});

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
          title: const Text(
            "Recepits",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: "Search"),
            ),
            SizedBox(
              height: 150,
            ),
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Color.fromARGB(255, 220, 220, 220),
                //foregroundColor: const Color.fromARGB(255, 184, 183, 183),
                child: Icon(
                  Icons.book,
                  color: Colors.white,
                  size: 60,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "You have no receipts yet",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
