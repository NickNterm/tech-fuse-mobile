import 'dart:convert';

import 'package:app/core/config/config_dev.dart';
import 'package:app/features/home/data/models/general_sensor_model.dart';
import 'package:app/features/home/data/network/home_api_service.dart';
import 'package:app/features/home/domain/entities/general_sensor.dart';
import 'package:built_collection/built_collection.dart';

import 'package:http/http.dart' as http;

abstract class HomeRemoteDataSource {
  Future<BuiltList<GeneralSensorModel>> getGeneralSensors();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final HomeApiService client;

  HomeRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<BuiltList<GeneralSensorModel>> getGeneralSensors() async {
    return (await client.getGeneralSensors()).bodyOrThrow;
    print("ding");
    var response = await http.get(
      Uri.parse(ConfigDev.API_URL + 'api/general/sensor/'),
      headers: {},
    );
    //print("resp ${response.body}");
    var sensorList = jsonDecode(response.body);
    return sensorList;
  }
}
