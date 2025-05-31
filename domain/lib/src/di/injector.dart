import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDomainDependencies(
  GetIt getIt,
  String? environment,
) async {
  await $initGetIt(getIt, environment: environment);
}
