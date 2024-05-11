import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../utils/assets.dart';
import '../../../routes/app_pages.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
            () => Get.offAllNamed(Routes.ONBOARDING));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height),
              width: (MediaQuery.of(context).size.width),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Color(0xff66CCFF), Color(0xff36F3AA)]),
              ),
              child: Column(
                children: [
                  SizedBox(height: 80.h,),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    height: 200.h,
                    child: ClipOval(
                      child: Image.asset(icSplashLogo),
                    ),
                  ),
                  Image.asset(icSplashImg,height: 400.h,)
                ],
              ),
            ),
          ],
        )
    );
  }
}