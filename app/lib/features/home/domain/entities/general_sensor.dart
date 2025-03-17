import 'package:app/features/home/data/models/general_sensor_model.dart';
import 'package:app/features/home/domain/entities/general_sensor_value.dart';
import 'package:latlong2/latlong.dart';

class GeneralSensor {
  final String sensorName;
  final LatLng location;
  final int id;
  final String notes;
  final String type;
  final double min;
  final double max;

  final List<GeneralSensorValue> values;

  GeneralSensor({
    required this.id,
    required this.sensorName,
    required this.location,
    required this.notes,
    required this.type,
    required this.values,
    required this.max,
    required this.min,
  });

  factory GeneralSensor.fromModel(GeneralSensorModel model) {
    return GeneralSensor(
      id: model.id,
      sensorName: model.sensorName,
      location: LatLng(model.lat, model.long),
      notes: model.notes,
      max: model.max,
      min: model.min,
      values: model.values
          .map(
            (v) => GeneralSensorValue.fromModel(v),
          )
          .toList(),
      type: model.type,
    );
  }
}
