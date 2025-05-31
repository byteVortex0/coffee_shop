import 'package:app/core/styles/style_manager.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.coffeeData});

  final CoffeeData coffeeData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                coffeeData.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 100.h,
              ),
            ),
            SizedBox(height: 10.h),
            Text(coffeeData.name, style: StyleManager.darkGrey16SemiBold),
            SizedBox(height: 5.h),
            Text(coffeeData.description, style: StyleManager.grey13Regular),
            SizedBox(height: 5.h),
            Text(coffeeData.price, style: StyleManager.black18SemiBold),
          ],
        ),
      ),
    );
  }
}
