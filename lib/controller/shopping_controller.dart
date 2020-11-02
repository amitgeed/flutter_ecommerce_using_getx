import 'dart:math';

import 'package:flutter_ecommerece_using_getx/model/item.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var items = List<Item>().obs;
  var latestProducts = List<Item>().obs;
  var topProducts = List<Item>().obs;
  var sponseredProducts = List<Item>().obs;
  var exclusiveProducts = List<Item>().obs;
  var latestProductsIndex = List<int>().obs;
  var topProductsIndex = List<int>().obs;
  var sponseredProductsIndex = List<int>().obs;
  var exclusiveProductsIndex = List<int>().obs;

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
        category: 'Computers & Laptops',
        imgUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSkn79hnYLqIuJ_5Tj55omgLE18OyGYI5QDcQ&usqp=CAU',
      ),
      Item(
        id: 2,
        name: 'iPhone 12',
        description: 'iPhone/8GB/64GB/A14 Bionic Chip',
        price: 85900,
        inStock: true,
        category: 'Mobiles & Tablets',
        imgUrl:
            'https://www.reliancedigital.in/medias/Apple-12-Smartphones-491901531-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxMjg3NjN8aW1hZ2UvanBlZ3xpbWFnZXMvaDlmL2hmMC85NDA3NzIyMzIzOTk4LmpwZ3wwYTdlNGYxNTQ2MzMzZGViMGUyODQ0Yjk0NzQ3MmEyNjYxY2Q0MzZmNTkxMzI0NjFmYWM1M2Y0ZDkwZmVmYjI4',
      ),
      Item(
        id: 3,
        name: 'Samsung LED 32"',
        description: '32" / Full HD/ 20w Dual Speaker',
        price: 42900,
        inStock: true,
        category: 'TV & Appliances',
        imgUrl:
            'https://www.reliancedigital.in/medias/SHARP-40LE185M-491350948-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxODA5OTV8aW1hZ2UvanBlZ3xpbWFnZXMvaDhkL2gwMy84OTk1NTgxNTkxNTgyLmpwZ3xmNWNmNThiNGRjYjM2NzU3NjcxYmU2NjNmMjFkMjU2ODI1NTRkNzkwZTRhY2UzYWRhZjc3NjNlNTY5NmZjNTU0',
      ),
      Item(
        id: 4,
        name: 'HP Lapotp',
        description:
            'HP 15-DA3001TU Laptop (10th Gen Intel Core i3-1005G1/4GB/1TB HDD/FHD), 39.6 cm (15.6 inch)',
        price: 35900,
        inStock: true,
        category: 'Computers & Laptops',
        imgUrl:
            'https://www.reliancedigital.in/medias/HP-15-DA3001TU-Laptops-491901043-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wyOTE2MDZ8aW1hZ2UvanBlZ3xpbWFnZXMvaGRhL2hkOC85Mzg2OTExOTI0MjU0LmpwZ3xlYzgzZDc4ZDAwZTM1NjczNDc0MWRhMWM2NjUwNmJlNWNhY2U4OWRmNzgyMjQ0ZmQ5MWFmYjA5MzA4ZjZmM2I3',
      ),
      Item(
        id: 5,
        name: 'Mi 10',
        description: 'Mi 10 256 GB, 8 GB RAM, Twilight Grey, Smartphone',
        price: 48900,
        inStock: true,
        category: 'Mobiles & Tablets',
        imgUrl:
            'https://www.reliancedigital.in/medias/Xiaomi-Mi-10-Smart-Phones-491838227-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wyMjk5Mjh8aW1hZ2UvanBlZ3xpbWFnZXMvaDFkL2g4OS85MzEyNjk4NTY0NjM4LmpwZ3xhZjg2MmU1NDZiZjRlYjFmMmNlY2ViYjBlZTcyNGJkMjUzMWRmM2E4ODEzYjAwMTVhYmE1ZGQzZDk2OTNkMTcw',
      ),
      Item(
        id: 6,
        name: 'pTron BassBud',
        description:
            'pTron Bassbuds in-Ear True Wireless Bluetooth Earphones (TWS) with Mic - (Black)',
        price: 1299,
        inStock: true,
        category: 'Electronics Accessories',
        imgUrl:
            'https://www.reliancedigital.in/medias/pTron-Bassbuds-HeadphonesandHeadstes-491895107-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wyMzU0NjN8aW1hZ2UvanBlZ3xpbWFnZXMvaDYxL2hkOC85MzQxODk5NzY3ODM4LmpwZ3xmZWRhYTkxMjNlMGNlODBkOGE3ODczMjVjOTBhOTA2NTA4NGFkOGVlNWU1YzYyMTU4YmUwY2RkOTU0NWU1N2Nh',
      ),
      Item(
        id: 7,
        name: 'Canon EOS 200D',
        description:
            'Canon EOS 200D II DSLR Camera with 18-55 mm and 55-250 mm Dual Lens Kit',
        price: 62999,
        inStock: true,
        category: 'Electronics Accessories',
        imgUrl:
            'https://www.reliancedigital.in/medias/Canon-EOS-200D-II-DSLR-Camera-491431413-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxMjU5ODl8aW1hZ2UvanBlZ3xpbWFnZXMvaDg2L2gwNy85MTM4MzgxMDYyMTc0LmpwZ3w3MGNhZjY1ZjBjZDg1YTE5YzJiMTE0MjE4MjY0ZjY4OGI3NWNiMzc1NDk5ODE2YmJkNDJiMGY0ZDJjYzVmZjM4',
      ),
      Item(
        id: 8,
        name: 'LG Washing Machine',
        description:
            'LG 7 Kg Top Fully Automatic Washing Machine, T70SKSF1Z Middle Free Silver',
        price: 17999,
        inStock: true,
        category: 'TV & Appliances',
        imgUrl:
            'https://www.reliancedigital.in/medias/LG-T70SKSFZ-Washing-Machine-491902817-i-1-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wxOTI3NTB8aW1hZ2UvanBlZ3xpbWFnZXMvaGZmL2gzMi85Mzc4Mjg0Nzk3OTgyLmpwZ3xiOGM4OTZjMDFlZjQxOTdkMDViNGY4N2M1OTQxMzBhZGUzNzVjZDY5MTJlN2ZjZWQxZGQ4Yjc5MjM0NGNlNWJi',
      ),
      Item(
        id: 9,
        name: 'Mens Printed formal Shirt',
        description:
            'Diverse Men\'s Printed Regular Fit Full Sleeve Cotton Formal Shirt',
        price: 399,
        inStock: true,
        category: 'Fashion',
        imgUrl:
            'https://images-na.ssl-images-amazon.com/images/I/81ep28K%2BXYL._UY741_.jpg',
      ),
      Item(
        id: 10,
        name: 'One Arranged Murder',
        description:
            'One Arranged Murder Paperback – 28 September 2020 by Chetan Bhagat ',
        price: 153,
        inStock: true,
        category: 'Other',
        imgUrl:
            'https://images-na.ssl-images-amazon.com/images/I/51D5WCAoebL._SX310_BO1,204,203,200_.jpg',
      ),
    ];
    items.value = itemsResult;
  }

  void fetchLatestProducts() async {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      latestProducts.add(items[randomItem]);
      latestProductsIndex.add(randomItem);
    }
  }

  void fetchTopProducts() {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      topProducts.add(items[randomItem]);
      topProductsIndex.add(randomItem);
    }
  }

  void fetchSponseredProducts() {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      sponseredProducts.add(items[randomItem]);
      sponseredProductsIndex.add(randomItem);
    }
  }

  void fetchExclusiveProducts() {
    for (int i = 0; i < 5; i++) {
      Random random = new Random();
      int randomItem = random.nextInt(items.length);
      exclusiveProducts.add(items[randomItem]);
      exclusiveProductsIndex.add(randomItem);
    }
  }
}
