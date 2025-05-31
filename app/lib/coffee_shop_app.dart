import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routes/app_routes.dart';

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Coffee Shop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: AppRoutes.onBoarding,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
      ),
    );
  }
}
