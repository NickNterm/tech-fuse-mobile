import 'dart:convert';

import 'package:app/features/home/data/models/general_sensor_value_model.dart';

class GeneralSensorValue {
  final int id;
  final DateTime dateTime;
  final Map<String, dynamic> value;

  GeneralSensorValue({
    required this.id,
    required this.dateTime,
    required this.value,
  });

  factory GeneralSensorValue.fromJson(Map<String, dynamic> map) {
    return GeneralSensorValue(
      id: map['id'],
      //TOdo
      dateTime: DateTime.now(),
      value: jsonDecode(map['data']),
    );
  }

  factory GeneralSensorValue.fromModel(GeneralSensorValueModel model) {
    return GeneralSensorValue(
      id: model.id,
      dateTime: model.date,
      value: jsonDecode(model.data.toString()),
    );
  }
}
