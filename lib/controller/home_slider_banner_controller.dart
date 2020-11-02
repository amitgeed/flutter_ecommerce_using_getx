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
            'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs2/36232310/original/46f019b403bf4537c75efb6d0cc51409e45c7a6b/need-banner-hero-image-for-your-company.jpg',
      ),
      HomeSliderBanner(
        imgUrl:
            'https://fiverr-res.cloudinary.com/images/t_smartwm/t_main1,q_auto,f_auto,q_auto,f_auto/attachments/delivery/asset/205e1a0459a1667203b6a6979c9fe1c3-1597510850/03/need-banner-hero-image-for-your-company.png',
      ),
      HomeSliderBanner(
        imgUrl:
            'https://fiverr-res.cloudinary.com/images/t_smartwm/t_main1,q_auto,f_auto,q_auto,f_auto/attachments/delivery/asset/fbe506bb82879470074f5c793081e6d5-1598718411/design/need-banner-hero-image-for-your-company.png',
      ),
      HomeSliderBanner(
        imgUrl:
            'https://fiverr-res.cloudinary.com/images/t_smartwm/t_main1,q_auto,f_auto,q_auto,f_auto/deliveries/91709108/original/banner-ads_ws_1517466667/need-banner-hero-image-for-your-company.jpg',
      ),
      HomeSliderBanner(
        imgUrl: 'https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto,q_auto,f_auto/gigs/36232310/original/ef53041b145428db9b1e9362510d8f211de9d3c1/need-banner-hero-image-for-your-company.jpg',
      ),
    ];
    homeSliderBanner.value = sliderBannerResult;
  }
}
