import 'package:app/coffee_shop_app.dart';
import 'package:di/di/di.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();

  await configureDependencies();

  runApp(const CoffeeShopApp());
}

configureDependencies() async {
  await di.configureDependencies();
}
