import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/detailed_page/components/item_details.dart';
import 'package:get/get.dart';

import 'components/detailed_description.dart';
import 'components/discount_card_widget.dart';
import 'components/product_rating.dart';
import 'components/rate_this_product.dart';

class Detailedpage extends StatelessWidget {
  static const String id = 'detailed_page';
  final int itemIndex;
  Detailedpage({this.itemIndex});
  final ShoppingController shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ItemDetails(itemIndex: itemIndex),
              ProductRating(),
              DiscountCardWidget(),
              RateProduct(),
              DetailedDescription(itemIndex: itemIndex),
              ReviewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Reviews and Ratings',
              style: kItemTitle(),
            ),
          ),
          ProductRating(),
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 1),
                  blurRadius: 3.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('John Doe (5.0)'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                      'This would be an 5*, absolutely amazing produc. It is the best Loptop in this price, Loving It. The battery backup is more than 7 hours and the speed is amazing.'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
