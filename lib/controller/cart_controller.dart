import 'package:flutter_ecommerece_using_getx/model/item.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = List<Item>().obs;
  int get itemCount => cartItems.length;
  double get cartValue => cartItems.fold(0, (sum, item) => sum + item.price);

  void addItem(Item item) {
    cartItems.add(item);
  }

  void remove(Item item) {
    cartItems.remove(item);
  }
}
