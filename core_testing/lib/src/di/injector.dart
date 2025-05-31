import 'package:di/di/di.dart' as di;
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureCoreTestingDependencies(
  GetIt getIt,
  String? environment,
) async {
  $initGetIt(getIt, environment: environment);
}

@visibleForTesting
Future<void> configureTestingDependencies() async {
  const environment = Environment.test;
  di.getIt.allowReassignment = true;
  await di.configureDependencies(environment: environment);
  await configureCoreTestingDependencies(di.getIt, environment);
}
