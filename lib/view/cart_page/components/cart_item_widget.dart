import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/cart_controller.dart';
import 'package:flutter_ecommerece_using_getx/controller/wishlist_controller.dart';
import 'package:get/get.dart';

class CartItemWidget extends StatelessWidget {
  final CartController cartController = Get.put(CartController());
  final WishlistController wishlistController = Get.put(WishlistController());

  @override
  Widget build(BuildContext context) {
    return GetX<CartController>(
      builder: (controller) {
        return Container(
          padding: EdgeInsets.all(5),
          child: ListView.builder(
            itemCount: cartController.itemCount,
            itemBuilder: (context, index) {
              return Container(
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(controller.cartItems[index].name),
                      ),
                      Divider(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            padding: EdgeInsets.all(5),
                            child: Image.network(
                              controller.cartItems[index].imgUrl,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(controller
                                        .cartItems[index].description),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text('Qunatity : 1'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      '${controller.cartItems[index].price}',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            onPressed: () {
                              wishlistController
                                  .addItem(controller.cartItems[index]);
                            },
                            child: Row(
                              children: [
                                Text('Save'),
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          ),
                          FlatButton(
                            onPressed: () {
                              cartController
                                  .remove(controller.cartItems[index]);
                            },
                            child: Row(
                              children: [
                                Text('Remove'),
                                Icon(Icons.delete),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
