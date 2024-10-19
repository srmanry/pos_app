import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/data/cart_item.dart';
import 'package:loyverse_pos_clone/app/data/product_data.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/payment.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/paymentpage.dart';

import 'home/views/cart_title.dart';

class CartPagetow extends StatefulWidget {
  //final Product item;
  // final Function() onRemove;
  // final Function() onAdd;
  CartPagetow({
    super.key,
    //required this.item,
    // required this.onRemove,
    // required this.onAdd
  });

  @override
  State<CartPagetow> createState() => _CartPagetowState();
}

class _CartPagetowState extends State<CartPagetow> {
  List<Product> cart = [];
  var bodyTextstyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text("CartPage"),
        ),
        body: producAddtList.isEmpty
            ? Center(
                child: Text(
                "Cart Is Empty",
                style: bodyTextstyle.copyWith(color: Colors.red),
              ))
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        //itemCount: searchdata.length,

                        itemCount: producAddtList.length,
                        itemBuilder: (_, index) {
                          return Card(
                            child: Row(
                              children: [
                                Image.asset(
                                  producAddtList[index].image,
                                  height: 80,
                                  width: 100,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      producAddtList[index].name,
                                      style: bodyTextstyle,
                                    ),
                                    Text(
                                      "BDT ${producAddtList[index].price}",
                                      style: bodyTextstyle.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14),
                                    ),
                                  ],
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            producAddtList.removeAt(index);
                                          });
                                        },
                                        icon: const Icon(
                                          Icons.cancel_outlined,
                                          color: Colors.red,
                                        )),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            if (producAddtList[index]
                                                    .quantity !=
                                                1) {
                                              setState(() {
                                                producAddtList[index]
                                                    .quantity--;
                                              });
                                              print(
                                                  "${producAddtList[index].quantity}---------------");
                                            }
                                          },
                                          icon: const Icon(Icons.remove),
                                        ),
                                        Text(producAddtList[index]
                                            .quantity
                                            .toString()),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              producAddtList[index].quantity++;
                                              print(
                                                  "${producAddtList[index].quantity}++++++");
                                            });
                                          },
                                          icon: const Icon(Icons.add),
                                        )
                                      ],
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          );
                        }),
                  ),
                  //Payment(items: productlist,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(const PaymentScreen());
                      },
                      child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          'Payment',
                          style: bodyTextstyle.copyWith(color: Colors.white),
                        )),
                      ),
                    ),
                  )
                  //Payment(items: cartItemList)
                ],
              ),
      ),
    );
  }
}
