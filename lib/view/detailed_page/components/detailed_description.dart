import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:get/get.dart';



class DetailedDescription extends StatelessWidget {
  DetailedDescription({
    Key key,
    @required this.itemIndex,
  }) : super(key: key);

  final int itemIndex;
  final ShoppingController shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return GetX<ShoppingController>(builder: (controller) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Product Description',
                style: kItemTitle(),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
              ),
              child: Text('${controller.items[itemIndex].description}'),
            ),
          ],
        ),
      );
    });
  }
}
