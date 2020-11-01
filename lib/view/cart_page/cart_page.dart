import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/cart_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/home_page.dart';
import 'package:get/get.dart';

import 'components/bottom_sheet_widget.dart';
import 'components/cart_item_widget.dart';

class CartPage extends StatelessWidget {
  final CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Obx(
        () => cartController.itemCount != 0
            ? CartItemWidget()
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Your Cart is Empty'),
                    FlatButton(
                      onPressed: () {
                        Get.offAll(HomePage());
                      },
                      child: Text(
                        'Shop Now',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              ),
      ),
      bottomSheet: Obx(
        () => cartController.itemCount != 0
            ? BottomSheetWidget()
            : BottomSheet(
                onClosing: () {},
                builder: (context) {
                  return Container(
                    height: 0,
                  );
                },
              ),
      ),
    );
  }
}
