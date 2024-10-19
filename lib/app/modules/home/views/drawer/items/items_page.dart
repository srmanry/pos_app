import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../custom_darawer.dart';
import 'add_categories.dart';
import 'add_discounts.dart';
import 'add_items.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

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
            "Items",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                Get.to(const AddItemsScreen());
              },
              child: const ListTile(
                leading: Icon(Icons.list),
                title: Text('Items'),
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
                Get.to(() => CategoriesScreen());
              },
              child: const ListTile(
                leading: Icon(Icons.copy),
                title: Text('Categories'),
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
                Get.to(() => const AddDiscountScreen());
              },
              child: const ListTile(
                leading: Icon(Icons.discount),
                title: Text('Discount'),
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
            Container(
              height: 100,
              color: Colors.grey[200],
              child: const Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'Extended items settings are available in the back office'),
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
            )
          ],
        ),
      ),
    );
  }
}
