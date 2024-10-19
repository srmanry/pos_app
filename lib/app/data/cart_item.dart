import 'package:loyverse_pos_clone/app/data/product_data.dart';

class CartItem {
  int quantity;
  Product product;
  CartItem({required this.quantity, required this.product});
}

List<CartItem> cartItemList = [
  // CartItem(quantity: 0, product: productlist[1]),
  // CartItem(quantity: 0, product: productlist[2]),
  // CartItem(quantity: 0, product: productlist[3]),
  // CartItem(quantity: 0, product: productlist[1]),
  // CartItem(quantity: 0, product: productlist[3]),
  // CartItem(quantity: 0, product: productlist[1]),
];

// class AddProduct {

// }
class ClassName extends Product {
  ClassName(
      {required super.name,
      required super.price,
      required super.image,
      required super.quantity});
}

List<Product> producAddtList = [];
