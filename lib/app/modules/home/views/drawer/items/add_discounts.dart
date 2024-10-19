import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/custom_darawer.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/items/items_page.dart';

class AddDiscountScreen extends StatelessWidget {
  const AddDiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(
          child: CustomDrawer(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: IconButton(
              onPressed: () {
                Get.to(() => ItemsScreen());
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          // leading: Builder(
          //     builder: (context) => IconButton(
          //           onPressed: () => Scaffold.of(context).openDrawer(),
          //           icon: const Icon(
          //             Icons.menu,
          //             color: Colors.white,
          //           ),
          //         )),
          title: const Row(
            children: [
              Text(
                "Discounts",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              // Icon(
              //   Icons.arrow_drop_down_outlined,
              //   color: Colors.white,
              // ),
            ],
          ),
          actions: const [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.grey[300],
                child: const Icon(
                  Icons.discount,
                  size: 80,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "You have no items yet",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "To  add the item,press the (+) buttonS",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            //foregroundColor: Colors.green,
            backgroundColor: Colors.green,
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
    );
  }
}
