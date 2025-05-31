import 'package:app/ui/onBoarding/on_boarding_screen.dart';
import 'package:app/ui/products/products_screen.dart';
import 'package:flutter/material.dart';

import 'base_routes.dart';

class AppRoutes {
  static const String onBoarding = '/onBoarding';
  static const String products = '/products';

  static Route? onGenerateRoutes(RouteSettings settings) {
    // final arg = settings.arguments;
    switch (settings.name) {
      case onBoarding:
        return BaseRoute(page: const OnBoardingScreen());
      case products:
        return BaseRoute(page: const ProductsScreen());
      default:
        return null;
    }
  }
}
