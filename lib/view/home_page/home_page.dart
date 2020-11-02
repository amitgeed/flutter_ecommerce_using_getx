import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/account_page/account_page.dart';
import 'package:flutter_ecommerece_using_getx/view/cart_page/cart_page.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/categories_slider.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/exclusive_deals.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/latest_products.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/slider_widget.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/sponsered_products.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/top_products.dart';
import 'package:flutter_ecommerece_using_getx/view/whishlist_page/wishlist_page.dart';
import 'package:get/get.dart';

import 'components/gird_top_bar.dart';
import 'components/more_products-button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 9.3,
              child: InkWell(
                onTap: () {
                  Get.offAll(HomePage());
                },
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.to(AccountPage());
              },
              leading: Icon(Icons.person),
              title: Text("My Account"),
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.to(WishlistPage());
              },
              leading: Icon(Icons.favorite_border),
              title: Text("My Wishlist"),
            ),
            ListTile(
              leading: Icon(Icons.drive_file_move_outline),
              title: Text("My Orders"),
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.to(CartPage());
              },
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text("My Cart"),
            ),
            Divider(),
            ListTile(
              title: Text("Privacy Policy"),
            ),
            ListTile(
              title: Text("Help Center"),
            ),
            ListTile(
              title: Text("About"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Shopee'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          InkWell(
            onTap: () {
              Get.to(CartPage());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.shopping_cart),
            ),
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
