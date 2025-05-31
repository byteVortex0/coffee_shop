import 'dart:developer';

import 'package:app/ui/products/logic/get_ptoducts/get_products_cubit.dart';
import 'package:app/ui/products/widgets/grid_item.dart';
import 'package:di/di/di.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoffeeGrid extends StatefulWidget {
  const CoffeeGrid({super.key});

  @override
  State<CoffeeGrid> createState() => _CoffeeGridState();
}

class _CoffeeGridState extends State<CoffeeGrid> {
  late GetProductsCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = di.inject<GetProductsCubit>()..fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductsCubit, GetProductsState>(
      bloc: _cubit,
      builder: (context, state) {
        if (state is GetProductsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetProductsError) {
          return Center(child: Text(state.message));
        } else if (state is GetProductsSuccess) {
          final products = state.products;

          log(products.first.imageUrl);

          return GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 0.6,
            ),
            physics: BouncingScrollPhysics(),
            itemBuilder:
                (context, index) => GridItem(coffeeData: products[index]),
          );
        }
        return const Center(child: Text('No products available'));
      },
    );
  }
}
