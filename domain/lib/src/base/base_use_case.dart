import 'package:dartz/dartz.dart';
import 'package:domain/src/error/failure.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCase<T, Param> {
  Future<Either<Failure, T>> call(Param param);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object?> get props => const [];
}
