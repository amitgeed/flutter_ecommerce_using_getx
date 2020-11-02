import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/cart_controller.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:get/get.dart';

class BottomBottons extends StatelessWidget {
  final int itemIndex;
  BottomBottons({this.itemIndex});

  final CartController cartController = Get.put(CartController());
  final ShoppingController shoppingController = Get.put(ShoppingController());
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              onPressed: () {},
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              onPressed: () {
                cartController.addItem(shoppingController.items[itemIndex]);
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('Added to cart')));
              },
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
