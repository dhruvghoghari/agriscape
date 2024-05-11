import 'package:agriscape/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/strings.dart';

class IntroView_1 extends StatefulWidget {
  const IntroView_1({super.key});

  @override
  State<IntroView_1> createState() => _IntroView_1State();
}

class _IntroView_1State extends State<IntroView_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 200.h),
            Center(
              child:Image.asset(icSplashLogo),
            ),
             Text(introTitle,style: TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.bold
             ),),
            SizedBox(height: 20.w),
            Text(introBody,textAlign: TextAlign.center,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
      ),
    );
  }
}
