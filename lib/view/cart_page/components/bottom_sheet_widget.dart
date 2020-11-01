import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/cart_controller.dart';
import 'package:get/get.dart';

class BottomSheetWidget extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 1,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Total Cart Value'),
                  GetX<CartController>(builder: (controller) {
                    return Text(
                      '${controller.cartValue}',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    );
                  }),
                ],
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Palce Order'),
                textColor: Colors.white,
                color: Colors.deepPurple,
              ),
            ],
          ),
        );
      },
    );
  }
}
