import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/product_widget.dart';
import 'package:get/get.dart';

class LatestProducts extends StatelessWidget {
  final ShoppingController shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildListDelegate(
        [
          ProductWidget(
            image: shoppingController.latestProducts[1].imgUrl,
            name: shoppingController.latestProducts[1].name,
            desc: shoppingController.latestProducts[1].description,
            price: '${shoppingController.latestProducts[1].price}',
            marginLeft: true,
            borderColor: kLatestProductsColor,
            productIndex: shoppingController.latestProductsIndex[1],
          ),
          ProductWidget(
            image: shoppingController.latestProducts[2].imgUrl,
            name: shoppingController.latestProducts[2].name,
            desc: shoppingController.latestProducts[2].description,
            price: '${shoppingController.latestProducts[2].price}',
            marginLeft: false,
            borderColor: kLatestProductsColor,
            productIndex: shoppingController.latestProductsIndex[2],
          ),
          ProductWidget(
            image: shoppingController.latestProducts[3].imgUrl,
            name: shoppingController.latestProducts[3].name,
            desc: shoppingController.latestProducts[3].description,
            price: '${shoppingController.latestProducts[3].price}',
            marginLeft: true,
            borderColor: kLatestProductsColor,
            productIndex: shoppingController.latestProductsIndex[3],
          ),
          ProductWidget(
            image: shoppingController.latestProducts[4].imgUrl,
            name: shoppingController.latestProducts[4].name,
            desc: shoppingController.latestProducts[4].description,
            price: '${shoppingController.latestProducts[4].price}',
            marginLeft: false,
            borderColor: kLatestProductsColor,
            productIndex: shoppingController.latestProductsIndex[4],
          ),
        ],
      ),
    );
  }
}
