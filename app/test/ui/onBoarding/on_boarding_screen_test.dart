import 'package:app/core/routes/app_routes.dart';
import 'package:app/ui/onBoarding/on_boarding_screen.dart';
import 'package:app/ui/products/products_screen.dart';
import 'package:core_testing/core_testing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  configureTestingDependencies();
  group('OnBoardingScreen', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: Size(375, 812),
          builder: (_, __) => MaterialApp(home: OnBoardingScreen()),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(OnBoardingScreen), findsOneWidget);
      expect(
        find.text('Fall in Love with\nCoffee in Blissful\nDelight!'),
        findsOneWidget,
      );
      expect(
        find.text(
          'Welcome to our cozy coffee corner,\nwhere every cup is a delightful for you.',
        ),
        findsOneWidget,
      );
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('calls callback when button is tapped', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        ScreenUtilInit(
          designSize: Size(375, 812),
          builder:
              (_, __) => MaterialApp(
                home: OnBoardingScreen(),
                onGenerateRoute: AppRoutes.onGenerateRoutes,
              ),
        ),
      );

      await tester.pumpAndSettle();

      Finder elevatedButtonFinder = find.byKey(const Key('startedButton'));
      expect(elevatedButtonFinder, findsOneWidget);

      await tester.ensureVisible(elevatedButtonFinder);
      await tester.tap(elevatedButtonFinder);
      await tester.pumpAndSettle();

      expect(find.byType(ProductsScreen), findsOneWidget);
    });
  });
}
