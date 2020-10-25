import 'package:flutter_ecommerece_using_getx/model/home_slider_banner.dart';
import 'package:get/get.dart';

class HomeSliderBannerController extends GetxController {
  var homeSliderBanner = List<HomeSliderBanner>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchSliderBanners();
  }

  void fetchSliderBanners() async {
    var sliderBannerResult = [
      HomeSliderBanner(
        imgUrl:
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
      ),
      HomeSliderBanner(
        imgUrl:
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
      ),
      HomeSliderBanner(
        imgUrl:
            'https://www.weltpixel.com/pub/media/wysiwyg/slider_page_Recovered_-05.png',
      ),
    ];
    homeSliderBanner.value = sliderBannerResult;
  }
}
