import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';
import 'package:flutter_ecommerece_using_getx/view/detailed_page/detailed_page.dart';

class ProductWidget extends StatelessWidget {
  final String image;
  final String name;
  final String desc;
  final String price;
  final bool marginLeft;
  final borderColor;
  ProductWidget({
    this.desc,
    this.image,
    this.name,
    this.price,
    this.marginLeft,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detailedpage(
              // itemIndex: ,
            ),
          ),
        );
      },
      child: Container(
        margin:
            marginLeft ? EdgeInsets.only(left: 8) : EdgeInsets.only(right: 8),
        height: 100,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(border: Border.all(color: borderColor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Image.network(image)),
            Text(name),
            Text(
              desc,
              textAlign: TextAlign.center,
              style: kItemDescription(),
            ),
            Text(price, style: kItemPrice()),
          ],
        ),
        // color: Colors.white,
      ),
    );
  }
}
