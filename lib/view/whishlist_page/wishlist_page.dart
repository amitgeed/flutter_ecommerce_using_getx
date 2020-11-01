import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/cart_controller.dart';
import 'package:flutter_ecommerece_using_getx/controller/wishlist_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/home_page.dart';
import 'package:get/get.dart';

class WishlistPage extends StatelessWidget {
  final WishlistController wishlistController = Get.put(WishlistController());
  final CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Wishlist'),
      ),
      body: Obx(
        () => wishlistController.itemCount != 0
            ? GetX<WishlistController>(
                builder: (controller) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    child: ListView.builder(
                      itemCount: wishlistController.itemCount,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      controller.wishlistItems[index].name),
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
                                        controller.wishlistItems[index].imgUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(controller
                                                  .wishlistItems[index]
                                                  .description),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text('Qunatity : 1'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Text(
                                                '${controller.wishlistItems[index].price}',
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    FlatButton(
                                      onPressed: () {
                                        cartController.addItem(
                                            wishlistController
                                                .wishlistItems[index]);
                                      },
                                      child: Row(
                                        children: [
                                          Text('Add to Cart'),
                                          Icon(Icons.shopping_cart_outlined),
                                        ],
                                      ),
                                    ),
                                    FlatButton(
                                      onPressed: () {
                                        wishlistController.remove(
                                            controller.wishlistItems[index]);
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
              )
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Your Wishlist is Empty'),
                    FlatButton(
                      onPressed: () {
                        Get.offAll(HomePage());
                      },
                      child: Text(
                        'Add Now',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: kPrimaryColor,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
