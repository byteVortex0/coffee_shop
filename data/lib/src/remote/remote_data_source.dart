import 'dart:convert';

import 'package:data/gen/assets.gen.dart';
import 'package:data/src/remote/base_remote_data_source.dart';
import 'package:domain/domain.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BaseRemoteDataSource)
class RemoteDataSource extends BaseRemoteDataSource {
  @override
  Future<List<CoffeeData>> getCoffeeData() async {
    // Api or local data fetching logic goes here
    // fetch data form coffee_data.json file from assets

    final data = await rootBundle.loadString(
      'packages/data/${Assets.data.coffeeData}',
    );

    List<dynamic> jsonList = jsonDecode(data);
    List<CoffeeData> coffeeDataList =
        jsonList.map((json) => CoffeeData.fromJson(json)).toList();

    return coffeeDataList;
  }
}
