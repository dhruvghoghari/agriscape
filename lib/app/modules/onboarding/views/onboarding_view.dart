import 'package:agriscape/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../routes/app_pages.dart';
import 'intro_1.dart';
import 'intro_2.dart';
import 'intro_3.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingCon = Get.put(OnboardingController());
    return Scaffold(
        body:Stack(
          children: [
            PageView(
              controller: onboardingCon.pageController,
              onPageChanged: (index) {
                setState(() {
                  onboardingCon.onLastPage.value = (index == 2);
                });
              },
              children: [
                IntroView_1(),
                IntroView_2(),
                IntroView_3(),
              ],
            ),
            Container(
              alignment: Alignment(0,0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: ()async{
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setBool("isFirst", true);
                      Get.offAllNamed(Routes.LOGIN);
                    },
                    child: TextButton(
                      onPressed: () async {
                        Get.offAllNamed(Routes.LOGIN);
                      },
                      child: const Text("Skip",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: onboardingCon.pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Colors.blue,
                    ),
                  ),
                  onboardingCon.onLastPage.value
                      ? SizedBox(
                    child:
                    ElevatedButton(
                      onPressed: () async {
                         Get.offAllNamed(Routes.LOGIN);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text("Done", style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize:20
                      ),
                      ),
                    ),
                  ) : SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        onboardingCon.pageController.nextPage(
                          duration: const Duration(microseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text("Next",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
}