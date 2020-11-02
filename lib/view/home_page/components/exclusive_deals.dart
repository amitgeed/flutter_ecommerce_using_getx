import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/product_widget.dart';
import 'package:get/get.dart';

class ExclusiveDeals extends StatelessWidget {
  final ShoppingController shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildListDelegate(
        [
          ProductWidget(
            image: shoppingController.exclusiveProducts[1].imgUrl,
            name: shoppingController.exclusiveProducts[1].name,
            desc: shoppingController.exclusiveProducts[1].description,
            price: '${shoppingController.exclusiveProducts[1].price}',
            marginLeft: true,
            borderColor: kExclusiveProductsColor,
            productIndex: shoppingController.exclusiveProductsIndex[1],
          ),
          ProductWidget(
            image: shoppingController.exclusiveProducts[2].imgUrl,
            name: shoppingController.exclusiveProducts[2].name,
            desc: shoppingController.exclusiveProducts[2].description,
            price: '${shoppingController.exclusiveProducts[2].price}',
            marginLeft: false,
            borderColor: kExclusiveProductsColor,
            productIndex: shoppingController.exclusiveProductsIndex[2],
          ),
          ProductWidget(
            image: shoppingController.exclusiveProducts[3].imgUrl,
            name: shoppingController.exclusiveProducts[3].name,
            desc: shoppingController.exclusiveProducts[3].description,
            price: '${shoppingController.exclusiveProducts[3].price}',
            marginLeft: true,
            borderColor: kExclusiveProductsColor,
            productIndex: shoppingController.exclusiveProductsIndex[3],
          ),
          ProductWidget(
            image: shoppingController.exclusiveProducts[4].imgUrl,
            name: shoppingController.exclusiveProducts[4].name,
            desc: shoppingController.exclusiveProducts[4].description,
            price: '${shoppingController.exclusiveProducts[4].price}',
            marginLeft: false,
            borderColor: kExclusiveProductsColor,
            productIndex: shoppingController.exclusiveProductsIndex[4],
          ),
        ],
      ),
    );
  }
}
