import 'package:flutter_ecommerece_using_getx/model/item.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = List<Item>().obs;
  int get itemCount => cartItems.length;

  void addItem(Item item) {
    cartItems.add(item);
  }

  void removw(Item item) {
    cartItems.remove(item);
  }
}
