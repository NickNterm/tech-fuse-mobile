import 'package:app/features/home/data/models/general_sensor_model.dart';
import 'package:app/features/home/data/sources/remote_data_source.dart';
import 'package:app/features/home/domain/entities/general_sensor.dart';
import 'package:built_collection/built_collection.dart';

import '../../domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<List<GeneralSensor>> getGeneralSensor() async {
    BuiltList<GeneralSensorModel> sensorModels =
        await remoteDataSource.getGeneralSensors();
    List<GeneralSensor> sensors = sensorModels
        .map(
          (s) => GeneralSensor.fromModel(s),
        )
        .toList();
    return sensors;

//    try {
//      List<GeneralSensor> sensors = await remoteDataSource.getGeneralSensors();
//      return sensors;
//    } catch (e) {
//      print("e $e");
//    }
//    return [];
//  }
  }
}
