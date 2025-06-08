import 'package:domain/domain.dart';
import 'package:flutter/widgets.dart';

@visibleForTesting
final dataJson = [
  {
    "id": 1,
    "name": "Espresso",
    "image": "https://example.com/espresso.jpg",
    "price": "\$ 3.50",
    "description": "Rich and bold espresso coffee.",
  },
  {
    "id": 2,
    "name": "Latte",
    "image": "https://example.com/latte.jpg",
    "price": "\$ 6.50",
    "description": "Smooth latte with steamed milk.",
  },
  {
    "id": 3,
    "name": "Cappuccino",
    "image": "https://example.com/cappuccino.jpg",
    "price": "\$ 2.50",
    "description": "Classic cappuccino with frothy milk.",
  },
];

@visibleForTesting
final List<CoffeeData> coffeeDataList = _coffeeDataList();

List<CoffeeData> _coffeeDataList() {
  return dataJson.map((json) => CoffeeData.fromJson(json)).toList();
}
