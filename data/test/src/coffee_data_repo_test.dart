import 'package:core_testing/core_testing.dart';
import 'package:dartz/dartz.dart';
import 'package:data/data.dart';
import 'package:data/src/remote/base_remote_data_source.dart';
import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'coffee_data_repo_test.mocks.dart';

@GenerateNiceMocks([MockSpec<BaseRemoteDataSource>()])
void main() {
  configureTestingDependencies();

  group('CoffeeDataRepo', () {
    late CoffeeDataRepo coffeeDataRepo;
    late MockBaseRemoteDataSource mockRemoteDataSource;
    setUp(() {
      mockRemoteDataSource = MockBaseRemoteDataSource();
      coffeeDataRepo = CoffeeDataRepo(mockRemoteDataSource);
    });

    test('should get coffee data from remote', () {
      when(
        mockRemoteDataSource.getCoffeeData(),
      ).thenAnswer((_) async => coffeeDataList);

      final result = coffeeDataRepo.fetchCoffeeData();

      expect(result, isA<Future<Either<Failure, List<CoffeeData>>>>());
    });
  });
}
