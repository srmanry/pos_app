import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/home_screen.dart';

import 'add_customer.dart';

class AddTicketPage extends StatelessWidget {
  const AddTicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          leading: InkWell(
              onTap: () {
                Get.to(() => HomeScreen());
              },
              child: const Icon(
                Icons.close,
                color: Colors.grey,
              )),
          title: const Text(
            "Add customer to ticket",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search), hintText: "Search"),
            ),
            InkWell(
              onTap: () {
                Get.to(() => AddcustomerScreen());
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "ADD NEW CUSTOMER",
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
              ),
            ),
            Container(
              color: Colors.black,
              height: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Text("You most recent customers will show up here")
          ],
        ),
      ),
    );
  }
}
