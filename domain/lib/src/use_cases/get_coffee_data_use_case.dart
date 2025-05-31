import 'package:dartz/dartz.dart';
import 'package:domain/src/base/base_use_case.dart';
import 'package:domain/src/error/failure.dart';
import 'package:domain/src/model/coffee_data.dart';
import 'package:injectable/injectable.dart';

import '../repo/base_coffee_data_repo.dart';

@injectable
class GetCoffeeDataUseCase extends BaseUseCase<List<CoffeeData>, NoParams> {
  final BaseCoffeeDataRepo _coffeeDataRepo;
  GetCoffeeDataUseCase(this._coffeeDataRepo);

  @override
  Future<Either<Failure, List<CoffeeData>>> call(NoParams param) async {
    return await _coffeeDataRepo.fetchCoffeeData();
  }
}
