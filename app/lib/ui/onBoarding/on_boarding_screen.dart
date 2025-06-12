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
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.65,
            child: Assets.images.onboarding.image(fit: BoxFit.cover),
          ),

          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.60,
              ),
              child: Column(
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
                        padding: EdgeInsets.symmetric(vertical: 12.h),
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
