import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/model/item.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  final String category;
  CategoryController({this.category});
  var categoryItems = List<Item>().obs;

  final ShoppingController shoppingController = Get.put(ShoppingController());
  int get limit => shoppingController.items.length;

  @override
  void onInit() {
    super.onInit();
    getItems();
  }

  void getItems() async {
    int i = 0;
    while (i < limit) {
      if (shoppingController.items[i].category == category) {
        categoryItems.add(shoppingController.items[i]);
      }
    }
  }
}
