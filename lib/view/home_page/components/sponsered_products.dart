import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:get/get.dart';
import 'product_widget.dart';

class SponseredProducts extends StatelessWidget {
  final ShoppingController shoppingController = Get.put(ShoppingController());
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildListDelegate(
        [
          ProductWidget(
            image:shoppingController.sponseredProducts[2].imgUrl,
            name: shoppingController.sponseredProducts[1].name,
            desc: shoppingController.sponseredProducts[1].description,
            price: '${shoppingController.sponseredProducts[1].price}',
            marginLeft: true,
            borderColor: kSponseredProductsColor,
          ),
          ProductWidget(
            image:shoppingController.sponseredProducts[2].imgUrl,
            name: shoppingController.sponseredProducts[2].name,
            desc: shoppingController.sponseredProducts[2].description,
            price: '${shoppingController.sponseredProducts[2].price}',
            marginLeft: false,
            borderColor: kSponseredProductsColor,
          ),
          ProductWidget(
            image: shoppingController.sponseredProducts[3].imgUrl,
            name: shoppingController.sponseredProducts[3].name,
            desc: shoppingController.sponseredProducts[3].description,
            price: '${shoppingController.sponseredProducts[3].price}',
            marginLeft: true,
            borderColor: kSponseredProductsColor,
          ),
          ProductWidget(
            image: shoppingController.sponseredProducts[4].imgUrl,
            name: shoppingController.sponseredProducts[4].name,
            desc: shoppingController.sponseredProducts[4].description,
            price: '${shoppingController.sponseredProducts[4].price}',
            marginLeft: false,
            borderColor: kSponseredProductsColor,
          ),
        ],
      ),
    );
  }
}
