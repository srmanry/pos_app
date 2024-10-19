import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyverse_pos_clone/app/data/cart_item.dart';

import 'style/style.dart';

class CartTitle extends StatelessWidget {
  final CartItem item;
  final Function() onRemove;
  final Function() onAdd;
  final Function() ondelete;

  const CartTitle({
    super.key,
    required this.onRemove,
    required this.onAdd,
    required this.item,
    required this.ondelete,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  height: 85,
                  //width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        item.product.image,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.product.name,
                      style: bodytextstyle,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "৳ ${item.product.price}",
                      style: bodytextstyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 5,
            right: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: ondelete,
                    icon: const Icon(
                      Icons.cancel_outlined,
                      color: Colors.red,
                    )),
                Row(
                  children: [
                    IconButton(
                      onPressed: onRemove,
                      icon: const Icon(Icons.remove),
                    ),
                    Text(item.quantity.toString()),
                    IconButton(
                      onPressed: onAdd,
                      icon: const Icon(Icons.add),
                    )
                  ],
                ),
              ],
            )),
      ],
    );
  }
}







//  if (item.quantity != 1) {
//                                       setState(() {
//                                         cartItemList[index].quantity--;
//                                       });
                                //    }