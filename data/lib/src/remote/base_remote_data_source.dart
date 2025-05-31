import 'package:domain/domain.dart';

abstract class BaseRemoteDataSource {
  Future<List<CoffeeData>> getCoffeeData();
}
