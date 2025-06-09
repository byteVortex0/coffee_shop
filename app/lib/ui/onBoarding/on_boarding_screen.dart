import 'package:app/core/colors/color_manager.dart';
import 'package:app/core/extensions/context_extension.dart';
import 'package:app/core/routes/app_routes.dart';
import 'package:app/core/styles/style_manager.dart';
import 'package:app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Assets.images.onboarding.image(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.5,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: (MediaQuery.of(context).size.height / 1.5) - 30.h,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 50.h),
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Fall in Love with\nCoffee in Blissful\nDelight!',
                    textAlign: TextAlign.center,
                    style: StyleManager.white28Bold,
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    'Welcome to our cozy coffee corner,\nwhere every cup is a delightful for you.',
                    textAlign: TextAlign.center,
                    style: StyleManager.grey13Regular,
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      key: const Key('startedButton'),
                      onPressed: () {
                        context.pushReplacementNamed(AppRoutes.products);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.darkBrown,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 40.w,
                          vertical: 12.h,
                        ),
                      ),
                      child: Text(
                        'Get Started',
                        style: StyleManager.white16SemiBold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
