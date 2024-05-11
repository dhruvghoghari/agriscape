import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class OnboardingController extends GetxController {

  RxBool onLastPage = false.obs;
  PageController pageController = PageController();

}
