import 'package:core_testing/core_testing.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_coffee_data_use_case_test.mocks.dart';

@GenerateNiceMocks([MockSpec<BaseCoffeeDataRepo>()])
void main() {
  configureTestingDependencies();
  group('GetCoffeeDataUseCase', () {
    late MockBaseCoffeeDataRepo mockBaseCoffeeDataRepo;
    late GetCoffeeDataUseCase getCoffeeDataUseCase;
    setUp(() {
      mockBaseCoffeeDataRepo = MockBaseCoffeeDataRepo();
      getCoffeeDataUseCase = GetCoffeeDataUseCase(mockBaseCoffeeDataRepo);
    });

    test('should get coffee data', () {
      when(
        getCoffeeDataUseCase.call(NoParams()),
      ).thenAnswer((_) async => Right(coffeeDataList));

      final result = getCoffeeDataUseCase.call(NoParams());
      expect(result, isA<Future<Either<Failure, List<CoffeeData>>>>());
      result.then((value) {
        expect(value.isRight(), true);
        value.fold(
          (failure) => fail('Expected success, got failure: $failure'),
          (coffeeDataList) {
            expect(coffeeDataList, isA<List<CoffeeData>>());
          },
        );
      });
    });

    test('should return failure when repo fails', () {
      when(
        getCoffeeDataUseCase.call(NoParams()),
      ).thenAnswer((_) async => Left(CacheFailure('Failed to fetch data')));

      final result = getCoffeeDataUseCase.call(NoParams());
      expect(result, isA<Future<Either<Failure, List<CoffeeData>>>>());
      result.then((value) {
        expect(value.isLeft(), true);
        value.fold(
          (failure) {
            expect(failure, isA<CacheFailure>());
          },
          (coffeeDataList) =>
              fail('Expected failure, got success: $coffeeDataList'),
        );
      });
    });
  });
}
