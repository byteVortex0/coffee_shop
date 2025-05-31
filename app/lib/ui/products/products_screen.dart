import 'package:app/ui/products/widgets/background.dart';
import 'package:app/ui/products/widgets/coffee_grid.dart';
import 'package:app/ui/products/widgets/top_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopPage(),
                  SizedBox(height: 20.h),
                  Expanded(child: CoffeeGrid()),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
