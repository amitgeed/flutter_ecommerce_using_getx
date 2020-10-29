import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/detailed_page/detailed_page.dart';
import 'package:get/get.dart';

class CategorisedItems extends StatelessWidget {
  final String category;
  CategorisedItems({this.category});
  final ShoppingController shoppingController = Get.put(ShoppingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height / 10,
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: GetX<ShoppingController>(builder: (controller) {
                return ListView.builder(
                    itemCount: controller.items.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(Detailedpage(
                            itemIndex: index,
                          ));
                        },
                        child: shoppingController.items[index].category ==
                                category
                            ? Card(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      padding: EdgeInsets.all(5),
                                      child: Image.network(
                                        controller.items[index].imgUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              controller.items[index].name,
                                              style: kItemTitle(),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              controller
                                                  .items[index].description,
                                              style: kItemDescription(),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              '${controller.items[index].price}',
                                              style: kItemPrice(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Center(),
                      );
                    });
              }),
            ),
          ),
        ],
      ),
    );
  }
}
