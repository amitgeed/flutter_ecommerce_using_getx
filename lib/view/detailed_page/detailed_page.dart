import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/controller/wishlist_controller.dart';
import 'package:flutter_ecommerece_using_getx/view/detailed_page/components/item_details.dart';
import 'package:get/get.dart';
import 'components/bottom_buttons.dart';
import 'components/detailed_description.dart';
import 'components/discount_card_widget.dart';
import 'components/product_rating.dart';
import 'components/rate_this_product.dart';
import 'components/review_widget.dart';

class Detailedpage extends StatelessWidget {
  static const String id = 'detailed_page';
  final int itemIndex;
  Detailedpage({this.itemIndex});
  final ShoppingController shoppingController = Get.put(ShoppingController());
  final WishlistController wishlistController = Get.put(WishlistController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Builder(builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back),
                          Text('Back'),
                        ],
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        wishlistController
                            .addItem(shoppingController.items[itemIndex]);
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Added to wishlist'),
                        ));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border_outlined),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ItemDetails(itemIndex: itemIndex),
              ProductRating(),
              DiscountCardWidget(),
              RateProduct(),
              DetailedDescription(itemIndex: itemIndex),
              ReviewWidget(),
              BottomBottons(itemIndex: itemIndex),
            ],
          ),
        ),
      );
    }));
  }
}
