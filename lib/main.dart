// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerece_using_getx/view/detailed_page/detailed_page.dart';
import 'package:flutter_ecommerece_using_getx/view/splash_page/splash_page.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());
// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MyApp(),
//       ),
//     );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoppe',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: SplashPage(),
      routes: {
        Detailedpage.id: (context) => Detailedpage(),
      },
    );
  }
}
