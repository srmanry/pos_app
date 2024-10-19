import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/modules/home/customs/colors.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/drawer/items/add_ticket.dart';

class AddcustomerScreen extends StatelessWidget {
  AddcustomerScreen({super.key});
  var textstyle = const TextStyle(
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Get.to(() => AddTicketPage());
              // Get.to(AddcustomerScreen());
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text(
            "Create customer",
            style: textstyle,
          ),
          actions: [
            Center(
              child: Text(
                "SAVE",
                style: textstyle.copyWith(color: Colors.green),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(hintText: "Name"),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(hintText: "Email"),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(hintText: "Phone"),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(hintText: "Address"),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "City",
                      suffixIcon: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Region"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Post Code"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.gif_box_outlined,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextField(
                          decoration:
                              InputDecoration(hintText: "Customer Code"),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.note_alt_outlined,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(hintText: "Note"),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
