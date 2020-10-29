import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/view/all_products_page/all_products.dart';
import 'package:get/get.dart';

class MoreProductsButton extends StatelessWidget {
  const MoreProductsButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          InkWell(
            onTap: () {
              Get.to(AllProducts());
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              padding: const EdgeInsets.all(20),
              child: Text(
                'Show All Products',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
