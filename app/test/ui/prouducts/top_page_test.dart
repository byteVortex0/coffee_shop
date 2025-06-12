import 'package:app/ui/products/products_screen.dart';
import 'package:core_testing/core_testing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  configureTestingDependencies();
  group('ProductsScreen', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: Size(375, 812),
          builder: (_, __) => MaterialApp(home: ProductsScreen()),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(ProductsScreen), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);
      expect(find.text('Location'), findsOneWidget);
    });
  });
}
