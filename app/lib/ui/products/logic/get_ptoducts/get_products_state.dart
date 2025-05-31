part of 'get_products_cubit.dart';

@immutable
sealed class GetProductsState {}

final class GetProductsLoading extends GetProductsState {}

final class GetProductsSuccess extends GetProductsState {
  final List<CoffeeData> products;

  GetProductsSuccess(this.products);
}

final class GetProductsError extends GetProductsState {
  final String message;

  GetProductsError(this.message);
}
