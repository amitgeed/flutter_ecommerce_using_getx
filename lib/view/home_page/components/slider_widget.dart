import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/controller/home_slider_banner_controller.dart';
import 'package:get/get.dart';

class HomeSliderWidget extends StatefulWidget {
  @override
  _HomeSliderWidgetState createState() => _HomeSliderWidgetState();
}

class _HomeSliderWidgetState extends State<HomeSliderWidget> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {});
  }

  final HomeSliderBannerController homeSliderBannerController =
      Get.put(HomeSliderBannerController());

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(5),
      child: GetX<HomeSliderBannerController>(
        builder: (controller) {
          return Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.homeSliderBanner.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4.0,
                  child: Image.network(
                    controller.homeSliderBanner[index].imgUrl,
                    width: MediaQuery.of(context).size.width - 10,
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
            // child: SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //     (BuildContext context, int index) {
            //       return Card(
            //         elevation: 4.0,
            //         child: Image.network(
            //           controller.homeSliderBanner[index].imgUrl,
            //           width: MediaQuery.of(context).size.width - 15,
            //           fit: BoxFit.cover,
            //         ),
            //       );
            //     },
            //   ),
            // ),
          );
        },
      ),
    );
  }
}
