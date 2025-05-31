import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/colors/color_manager.dart';
import '../../../core/styles/style_manager.dart';
import '../../../gen/assets.gen.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20.h),

        Text('Location', style: StyleManager.grey13Regular),
        SizedBox(height: 3.h),
        Text('Bilzen, Tanjungbalai', style: StyleManager.lighterGrey14SemiBold),

        SizedBox(height: 20.h),

        TextField(
          style: StyleManager.white16SemiBold,
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorManager.dark,
            hintText: 'Search Coffee',
            hintStyle: StyleManager.grey13Regular,
            prefixIcon: Icon(Icons.search, color: Colors.white),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide.none,
            ),
          ),
        ),

        SizedBox(height: 20.h),

        Assets.images.banner.image(width: double.infinity, height: 150.h),
      ],
    );
  }
}
