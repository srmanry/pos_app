import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loyverse_pos_clone/app/modules/home/customs/colors.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/settingsdart/taxes_screen.dart';

import 'settings_screen.dart';

class CreateTaxScreen extends StatefulWidget {
  const CreateTaxScreen({super.key});

  @override
  State<CreateTaxScreen> createState() => _CreateTaxScreenState();
}

class _CreateTaxScreenState extends State<CreateTaxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appBarcolor,
          leading: InkWell(
            onTap: () {
              Get.to(TaxesScreen());
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: const Text("Create tax"),
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
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                //height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      const TextField(
                        decoration: InputDecoration(
                            hintText: "Tax rate %", fillColor: Colors.black),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text('Type'),
                      DropdownButton(
                        isExpanded: true,
                        underline: Container(
                          color: Colors.grey,
                          height: 1,
                        ),
                        //value: dropdownValue,
                        hint: const Text(
                          "Tax type",
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

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.green, width: 1)),
                          height: 50,
                          child: Center(child: Text("APPLY TO ITEMS")),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                ))
          ],
        ),
      ),
    );
  }
}
