import 'package:app/core/routes/app_routes.dart';
import 'package:app/ui/onBoarding/on_boarding_screen.dart';
import 'package:app/ui/products/products_screen.dart';
import 'package:di/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  testWidgets('Flow 1', (WidgetTester tester) async {
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

    expect(find.byType(ElevatedButton), findsOneWidget);

    Finder elevatedButtonFinder = find.byKey(const Key('startedButton'));
    expect(elevatedButtonFinder, findsOneWidget);

    await tester.ensureVisible(elevatedButtonFinder);
    await tester.tap(elevatedButtonFinder);
    await tester.pumpAndSettle();

    expect(find.byType(ProductsScreen), findsOneWidget);

    await tester.pump(const Duration(seconds: 2));

    await tester.drag(find.byType(GridView), const Offset(0, -500));
    await tester.pumpAndSettle();

    await tester.pump(const Duration(seconds: 3));

    await tester.drag(find.byType(GridView), const Offset(0, 500));
    await tester.pumpAndSettle();
  });
}
