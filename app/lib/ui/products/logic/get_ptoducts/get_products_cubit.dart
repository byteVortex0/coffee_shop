import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'get_products_state.dart';

@injectable
class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit(this._getCoffeeDataUseCase) : super(GetProductsLoading());

  final GetCoffeeDataUseCase _getCoffeeDataUseCase;

  fetchProducts() async {
    emit(GetProductsLoading());
    final result = await _getCoffeeDataUseCase.call(NoParams());
    result.fold(
      (failure) => emit(GetProductsError(failure.message)),
      (products) => emit(GetProductsSuccess(products)),
    );
  }
}
