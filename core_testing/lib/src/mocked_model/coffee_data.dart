import 'package:domain/domain.dart';
import 'package:flutter/widgets.dart';

@visibleForTesting
final dataJson = [
  {
    "id": "1",
    "name": "Espresso",
    "imageUrl": "https://example.com/espresso.jpg",
    "price": 2.5,
    "description": "Rich and bold espresso coffee.",
  },
  {
    "id": "2",
    "name": "Latte",
    "imageUrl": "https://example.com/latte.jpg",
    "price": 3.0,
    "description": "Smooth latte with steamed milk.",
  },
  {
    "id": "3",
    "name": "Cappuccino",
    "imageUrl": "https://example.com/cappuccino.jpg",
    "price": 3.5,
    "description": "Classic cappuccino with frothy milk.",
  },
];

@visibleForTesting
final List<CoffeeData> coffeeDataList = _coffeeDataList();

List<CoffeeData> _coffeeDataList() {
  return dataJson.map((json) => CoffeeData.fromJson(json)).toList();
}
