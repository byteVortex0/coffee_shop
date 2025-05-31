import 'package:dartz/dartz.dart';
import 'package:data/src/remote/base_remote_data_source.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseCoffeeDataRepo)
class CoffeeDataRepo extends BaseCoffeeDataRepo {
  final BaseRemoteDataSource remoteDataSource;

  CoffeeDataRepo(this.remoteDataSource);

  @override
  Future<Either<Failure, List<CoffeeData>>> fetchCoffeeData() async {
    // Fetch data from the remote data source
    final result = await remoteDataSource.getCoffeeData();

    try {
      return Right(result);
    } catch (e) {
      return Left(CacheFailure('Failed to fetch data: ${e.toString()}'));
    }
  }
}
