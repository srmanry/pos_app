import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'general_screen.dart';

class LayOutScreen extends StatelessWidget {
  const LayOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Get.to(() => GeneralScreen());
            },
            child: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Home screen item layout",
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Center(
              child: Text(
                "SAVE",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.radio_button_off_outlined,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("List View"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.radio_button_on,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Grid View"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
