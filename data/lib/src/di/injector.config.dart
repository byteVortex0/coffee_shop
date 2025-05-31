// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../remote/base_remote_data_source.dart' as _i141;
import '../remote/remote_data_source.dart' as _i22;
import '../repos/coffee_data_repo.dart' as _i251;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.factory<_i141.BaseRemoteDataSource>(() => _i22.RemoteDataSource());
  gh.factory<_i494.BaseCoffeeDataRepo>(
    () => _i251.CoffeeDataRepo(gh<_i141.BaseRemoteDataSource>()),
  );
  return getIt;
}
