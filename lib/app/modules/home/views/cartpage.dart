import 'package:flutter/material.dart';
import 'package:loyverse_pos_clone/app/data/cart_item.dart';
import 'package:loyverse_pos_clone/app/modules/home/customs/colors.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/cart_title.dart';
import 'package:loyverse_pos_clone/app/modules/home/views/payment.dart';

class CartPage extends StatefulWidget {
  //  final List<CartItem> items;
  // CartPage({super.key, required this.items});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  var bodytextstyle =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor:
              cartItemList.isEmpty ? Colors.white : Colors.grey[200],
          appBar: AppBar(
            backgroundColor: appBarcolor,
            centerTitle: true,
            title: const Text("Cart Screen"),
          ),
          body: cartItemList.isNotEmpty
              ? Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                              //    height: 5,
                              ),
                          // itemCount:  searchdata.length,
                          itemCount: cartItemList.length,
                          itemBuilder: (_, index) => CartTitle(
                              ondelete: () {
                                setState(() {
                                  cartItemList.removeAt(index);
                                });
                              },
                              onRemove: () {
                                if (cartItemList[index].quantity != 1) {
                                  setState(() {
                                    cartItemList[index].quantity--;
                                  });
                                }
                              },
                              onAdd: () {
                                setState(() {
                                  cartItemList[index].quantity++;
                                });
                              },
                              item: cartItemList[index])),
                    ),
                    TextButton(
                        onPressed: () {
                          print("Print cart index");
                          print(cartItemList.length);
                        },
                        child: const Text("Print Index cart")),
                    //Payment(items: cartItemList)
                  ],
                )
              : Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/empty.png",
                      // height: 200,
                    ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    const Text(
                      " Cart is Empty",
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    )
                  ],
                ))),
    );
  }
}
