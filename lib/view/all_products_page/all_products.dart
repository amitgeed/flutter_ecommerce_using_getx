import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/view/all_products_page/components/item_widget.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Products'),
      ),
      body: Column(
        children: [
          ItemWidget(),
        ],
      ),
    );
  }
}
