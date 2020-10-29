import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:get/get.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    Key key,
    @required this.itemIndex,
  }) : super(key: key);

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return GetX<ShoppingController>(builder: (controller) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Image.network(controller.items[itemIndex].imgUrl)),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Text(
                controller.items[itemIndex].name,
                style: kItemTitle(),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Text('${controller.items[itemIndex].description}'),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Text(
                'INR ${controller.items[itemIndex].price}',
                style: kItemPrice(),
              ),
            ),
          ],
        ),
      );
    });
  }
}
