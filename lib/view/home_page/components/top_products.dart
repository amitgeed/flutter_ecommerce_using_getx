import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/product_widget.dart';
import 'package:get/get.dart';

class TopProducts extends StatelessWidget {
  final ShoppingController shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildListDelegate(
        [
          ProductWidget(
            image: shoppingController.topProducts[1].imgUrl,
            name: shoppingController.topProducts[1].name,
            desc: shoppingController.topProducts[1].description,
            price: '${shoppingController.topProducts[1].price}',
            marginLeft: true,
            borderColor: kTopProductsColor,
            productIndex: shoppingController.topProductsIndex[1],
          ),
          ProductWidget(
            image: shoppingController.topProducts[2].imgUrl,
            name: shoppingController.topProducts[2].name,
            desc: shoppingController.topProducts[2].description,
            price: '${shoppingController.topProducts[2].price}',
            marginLeft: false,
            borderColor: kTopProductsColor,
            productIndex: shoppingController.topProductsIndex[2],
          ),
          ProductWidget(
            image: shoppingController.topProducts[3].imgUrl,
            name: shoppingController.topProducts[3].name,
            desc: shoppingController.topProducts[3].description,
            price: '${shoppingController.topProducts[3].price}',
            marginLeft: true,
            borderColor: kTopProductsColor,
            productIndex: shoppingController.topProductsIndex[3],
          ),
          ProductWidget(
            image: shoppingController.topProducts[4].imgUrl,
            name: shoppingController.topProducts[4].name,
            desc: shoppingController.topProducts[4].description,
            price: '${shoppingController.topProducts[4].price}',
            marginLeft: false,
            borderColor: kTopProductsColor,
            productIndex: shoppingController.topProductsIndex[4],
          ),
        ],
      ),
    );
  }
}
