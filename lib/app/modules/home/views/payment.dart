import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/data/cart_item.dart';

import 'paymentpage.dart';
import 'style/style.dart';

class Payment extends StatelessWidget {
  final List<ClassName> items;
  const Payment({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Price ",
                style: bodytextstyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "\$${ producAddtList.length > 1 ? items.map<double>((e) => e.quantity * e.price).reduce((value1, value2) => value1 + value2) : items[0].price * items[0].quantity}",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              )
              // Text(
              //   "৳ 5000 ",
              //   style: bodytextstyle.copyWith(
              //       fontSize: 18, fontWeight: FontWeight.bold),
              // ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green,
              ),
              child: InkWell(
                onTap: () {
                  Get.to(() => PaymentScreen());
                },
                child: const Center(
                    child: Text(
                  "PAYMENT",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
