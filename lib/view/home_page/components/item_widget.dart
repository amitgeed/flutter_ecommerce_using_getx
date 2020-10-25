import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/shopping_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/detailed_page/detailed_page.dart';
import 'package:flutter_ecommerece_using_getx/view/home_page/components/slider_widget.dart';
import 'package:get/get.dart';

class ItemWidget extends StatelessWidget {
  final ShoppingController shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height -
          MediaQuery.of(context).size.height / 10,
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: GetX<ShoppingController>(builder: (controller) {
        return ListView.builder(
            itemCount: controller.items.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HomeSliderWidget(),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Top Deals',
                        style: kDealTitle(),
                      ),
                    ),
                  ],
                );
              }
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detailedpage(
                        itemIndex: index - 1,
                      ),
                    ),
                  );
                  print(index);
                },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        padding: EdgeInsets.all(5),
                        child: Image.network(
                          controller.items[index - 1].imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.items[index - 1].name,
                                style: kItemTitle(),
                              ),
                              SizedBox(height: 5),
                              Text(
                                controller.items[index - 1].description,
                                style: kItemDescription(),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '${controller.items[index - 1].price}',
                                style: kItemPrice(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      }),
    );
  }
}
