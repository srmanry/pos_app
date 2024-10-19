import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/customs/colors.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/settingsdart/settings_screen.dart';

class CreatePinterScreen extends StatefulWidget {
  CreatePinterScreen({super.key});

  @override
  State<CreatePinterScreen> createState() => _CreatePinterScreenState();
}

class _CreatePinterScreenState extends State<CreatePinterScreen> {
  String dropdownValue = "one";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Get.to(Get.to(SettingsScreen()));
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const Text("Create printer"),
          actions: const [
            Center(
              child: Text(
                "SAVE",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Container(
            color: Colors.white,
            height: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Name", fillColor: Colors.black),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Printer Model'),
                DropdownButton(
                  isExpanded: true,
                  underline: Container(
                    color: Colors.grey,
                    height: 1,
                  ),
                  //value: dropdownValue,
                  hint: const Text(
                    "Pinter model",
                  ),

                  icon: const Icon(Icons.arrow_drop_down),
                  onChanged: (val) {
                    setState(() {});
                  },
                  items: const [
                    DropdownMenuItem(
                      value: "1",
                      child: Text("1"),
                    ),
                    DropdownMenuItem(
                      value: "2",
                      child: Text("2"),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Print receipts"),
                      Icon(Icons.toggle_off_outlined)
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  height: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.print_rounded),
                    SizedBox(
                      width: 20,
                    ),
                    Text("PRINT TEST")
                  ],
                ),
                // Divider(
                //   height: 1,
                //   color: Colors.black,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
