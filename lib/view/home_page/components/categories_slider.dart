import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/utils/constants.dart';

class Categoriesslider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoriesWidget(
            icon: Icons.mobile_friendly,
            title: 'Mobile & Tablets',
            onTapped: () {},
          ),
          CategoriesWidget(
            icon: Icons.laptop,
            title: 'Computers & Laptops',
            onTapped: () {},
          ),
          CategoriesWidget(
            icon: Icons.electrical_services,
            title: 'Electronics Accessories',
            onTapped: () {},
          ),
          CategoriesWidget(
            icon: Icons.tv,
            title: 'Tv & Appliances',
            onTapped: () {},
          ),
          CategoriesWidget(
            icon: Icons.shopping_bag,
            title: 'Fashion',
            onTapped: () {},
          ),
          CategoriesWidget(
            icon: Icons.disc_full_outlined,
            title: 'Others',
            onTapped: () {},
          ),
        ],
      ),
    );
  }
}

class CategoriesWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function onTapped;
  CategoriesWidget({
    this.icon,
    this.onTapped,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapped,
      child: Container(
        width: 100,
        padding: EdgeInsets.all(5),
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: kPrimaryColor,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
