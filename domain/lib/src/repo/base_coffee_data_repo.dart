import 'package:dartz/dartz.dart';
import 'package:domain/src/error/failure.dart';

import '../model/coffee_data.dart';

abstract class BaseCoffeeDataRepo {
  Future<Either<Failure, List<CoffeeData>>> fetchCoffeeData();
}
