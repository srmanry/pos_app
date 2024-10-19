import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/customs/colors.dart';

import 'add_items.dart';
import 'add_ticket.dart';

class CreateItemScreen extends StatefulWidget {
  CreateItemScreen({super.key});

  @override
  State<CreateItemScreen> createState() => _CreateItemScreenState();
}

class _CreateItemScreenState extends State<CreateItemScreen> {
  var textstyle = const TextStyle(
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Get.to(() => const AddItemsScreen());
              // Get.to(AddcustomerScreen());
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          elevation: 1,
          backgroundColor: appBarcolor,
          title: Text(
            "Create items",
            style: textstyle.copyWith(color: Colors.white),
          ),
          actions: [
            Center(
              child: Text(
                "SAVE",
                style: textstyle.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListView(
            children: [
              const TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  fillColor: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Category"),
              DropdownButton(
                isExpanded: true,
                underline: Container(
                  color: Colors.white,
                  height: 1,
                ),
                //value: dropdownValue,
                hint: const Text(
                  "All items",
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
              Container(
                height: 1,
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text("Sold by"),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.radio_button_checked_outlined,
                        color: Colors.green,
                      ),
                      Text("Each"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.radio_button_off,
                        color: Colors.green,
                      ),
                      Text("Weight"),
                    ],
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: "Price"),
                  ),
                  const Text(
                      "Leave The field blank to indicate the price upon sale cost"),
                  const TextField(
                    decoration: InputDecoration(hintText: "Tk 00"),
                  ),
                  const TextField(
                    decoration: InputDecoration(hintText: "Barcode"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.grey[300],
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Inventory'),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text("Track stock"),
                                Icon(
                                  Icons.toggle_off_outlined,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
