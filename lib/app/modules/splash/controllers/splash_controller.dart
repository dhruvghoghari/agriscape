import 'package:agriscape/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    Future.delayed(
        Duration(seconds: 3),
            () => Get.toNamed(Routes.ONBOARDING));
  }
}
