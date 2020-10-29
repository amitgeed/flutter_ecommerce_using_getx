import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/cart_controller.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/detailed_page/detailed_page.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  final CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Expanded(
    //       child: Container(
    //         height: MediaQuery.of(context).size.height -
    //             MediaQuery.of(context).size.height / 10,
    //         padding: EdgeInsets.symmetric(horizontal: 5),
    //         child: GetX<CartController>(builder: (controller) {
    //           return ListView.builder(
    //               itemCount: controller.itemCount,
    //               itemBuilder: (context, index) {
    //                 return InkWell(
    //                   onTap: () {
    //                     Get.to(Detailedpage(
    //                       itemIndex: index,
    //                     ));
    //                   },
    //                   child: Card(
    //                     child: Row(
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children: [
    //                         Container(
    //                           height: 100,
    //                           width: 100,
    //                           padding: EdgeInsets.all(5),
    //                           child: Image.network(
    //                             controller.cartItems[index].imgUrl,
    //                             fit: BoxFit.cover,
    //                           ),
    //                         ),
    //                         Expanded(
    //                           child: Container(
    //                             padding: EdgeInsets.all(10),
    //                             child: Column(
    //                               mainAxisAlignment: MainAxisAlignment.start,
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children: [
    //                                 Text(
    //                                   controller.cartItems[index].name,
    //                                   style: kItemTitle(),
    //                                 ),
    //                                 SizedBox(height: 5),
    //                                 Text(
    //                                   controller.cartItems[index].description,
    //                                   style: kItemDescription(),
    //                                 ),
    //                                 SizedBox(height: 5),
    //                                 Text(
    //                                   '${controller.cartItems[index].price}',
    //                                   style: kItemPrice(),
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                 );
    //               });
    //         }),
    //       ),
    //     ),
    //   ],
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Container(
        child: Text('${cartController.itemCount}',
        //TODO: Cart UI
        ),
      ),
    );
  }
}
