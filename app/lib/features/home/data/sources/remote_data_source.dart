import 'package:app/features/home/data/models/general_sensor_model.dart';
import 'package:app/features/home/data/network/home_api_service.dart';
import 'package:built_collection/built_collection.dart';

abstract class HomeRemoteDataSource {
  Future<BuiltList<GeneralSensorModel>> getGeneralSensors();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final HomeApiService client;

  HomeRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<BuiltList<GeneralSensorModel>> getGeneralSensors() {
    throw UnimplementedError();
  }
}
