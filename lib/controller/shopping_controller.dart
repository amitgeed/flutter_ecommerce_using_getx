import 'dart:math';

import 'package:flutter_ecommerece_using_getx/model/item.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var items = List<Item>().obs;
  var latestProducts = List<Item>().obs;
  var topProducts = List<Item>().obs;
  var sponseredProducts = List<Item>().obs;
  var exclusiveProducts = List<Item>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchItems();
    fetchLatestProducts();
    fetchTopProducts();
    fetchSponseredProducts();
    fetchExclusiveProducts();
  }

  void fetchItems() async {
    var itemsResult = [
      Item(
        id: 1,
        name: 'Asus',
        description: 'Asus 8GB/512 SSD/ 2GB Nvidia/ 1.66kg',
        price: 42900,
        inStock: true,
        category: 'Electronics',
        imgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkn79hnYLqIuJ_5Tj55omgLE18OyGYI5QDcQ&usqp=CAU',
      ),
      Item(
        id: 2,
        name: 'Asus Lapotp',
        description: 'Asus 8GB/512 SSD/ 2GB Nvidia/ 1.66kg',
        price: 42900,
        inStock: true,
        category: 'Electronics',
        imgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkn79hnYLqIuJ_5Tj55omgLE18OyGYI5QDcQ&usqp=CAU',
      ),
      Item(
        id: 3,
        name: 'Asus Lapotp',
        description: 'Asus 8GB/512 SSD/ 2GB Nvidia/ 1.66kg',
        price: 42900,
        inStock: true,
        category: 'Electronics',
        imgUrl:
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
      ),
      Item(
        id: 4,
        name: 'Asus Lapotp',
        description: 'Asus 8GB/512 SSD/ 2GB Nvidia/ 1.66kg',
        price: 42900,
        inStock: true,
        category: 'Electronics',
        imgUrl:
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
      ),
      Item(
        id: 5,
        name: 'Asus Lapotp',
        description: 'Asus 8GB/512 SSD/ 2GB Nvidia/ 1.66kg',
        price: 42900,
        inStock: true,
        category: 'Electronics',
        imgUrl:
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
      ),
      Item(
        id: 6,
        name: 'Asus Lapotp',
        description: 'Asus 8GB/512 SSD/ 2GB Nvidia/ 1.66kg',
        price: 42900,
        inStock: true,
        category: 'Electronics',
        imgUrl:
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
      ),
      Item(
        id: 7,
        name: 'Asus Lapotp',
        description: 'Asus 8GB/512 SSD/ 2GB Nvidia/ 1.66kg',
        price: 42900,
        inStock: true,
        category: 'Electronics',
        imgUrl:
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
      ),
      Item(
        id: 8,
        name: 'Asus Lapotp',
        description: 'Asus 8GB/512 SSD/ 2GB Nvidia/ 1.66kg',
        price: 42900,
        inStock: true,
        category: 'Electronics',
        imgUrl:
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
      ),
    ];
    items.value = itemsResult;
  }

  void fetchLatestProducts() async {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      latestProducts.add(items[randomItem]);
    }
  }

  void fetchTopProducts() {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      topProducts.add(items[randomItem]);
    }
  }

  void fetchSponseredProducts() {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      sponseredProducts.add(items[randomItem]);
    }
  }

  void fetchExclusiveProducts() {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      exclusiveProducts.add(items[randomItem]);
    }
  }

  void fetchProductCategories() {
    int i = 0;
    while (i < items.length) {
      
    }
  }
}
