import 'package:flutter_ecommerece_using_getx/model/item.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var items = List<Item>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchItems();
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
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
      ),
      Item(
        id: 2,
        name: 'Asus Lapotp',
        description: 'Asus 8GB/512 SSD/ 2GB Nvidia/ 1.66kg',
        price: 42900,
        inStock: true,
        category: 'Electronics',
        imgUrl:
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
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
}
