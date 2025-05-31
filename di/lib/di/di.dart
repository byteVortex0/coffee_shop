import 'package:app/core/di/injector.dart' as app;
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:data/data.dart' as data;
import 'package:domain/domain.dart' as domain;

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies({
  String environment = Environment.dev,
}) async {
  await app.configureAppDependencies(getIt, environment);
  await data.configureDataDependencies(getIt, environment);
  await domain.configureDomainDependencies(getIt, environment);
}

Future<void> resetDi() async {
  // Reset the GetIt instance
  getIt.reset();
}

T inject<T extends Object>({String? instanceName, Type? type}) {
  return getIt.get<T>(instanceName: instanceName, type: type);
}
