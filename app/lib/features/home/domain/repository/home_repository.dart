import 'package:app/features/home/domain/entities/general_sensor.dart';

abstract class HomeRepository {
  Future<List<GeneralSensor>> getGeneralSensor();
}
