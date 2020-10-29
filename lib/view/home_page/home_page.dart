import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/categories_slider.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/exclusive_deals.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/latest_products.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/slider_widget.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/sponsered_products.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/top_products.dart';

import 'components/gird_top_bar.dart';
import 'components/more_products-button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Shopee'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Container(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  HomeSliderWidget(),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Categoriesslider(),
                ],
              ),
            ),
            GridTopBarWidget(
              color: kLatestProductsColor,
              title: 'Latest Products',
            ),
            LatestProducts(),
            GridTopBarWidget(
              color: kTopProductsColor,
              title: 'Top Products',
            ),
            TopProducts(),
            GridTopBarWidget(
              color: kSponseredProductsColor,
              title: 'Sponsered',
            ),
            SponseredProducts(),
            GridTopBarWidget(
              color: kExclusiveProductsColor,
              title: 'Exclusive Deals',
            ),
            ExclusiveDeals(),
            MoreProductsButton(),
          ],
        ),
      ),
    );
  }
}
