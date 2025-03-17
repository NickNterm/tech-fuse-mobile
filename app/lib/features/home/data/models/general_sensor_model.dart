library general_sensor_model;

import 'package:app/features/home/data/models/general_sensor_value_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'general_sensor_model.g.dart';

abstract class GeneralSensorModel
    implements Built<GeneralSensorModel, GeneralSensorModelBuilder> {
  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'sensor_name')
  String get sensorName;

  @BuiltValueField(wireName: 'lat')
  double get lat;

  @BuiltValueField(wireName: 'lon')
  double get long;

  @BuiltValueField(wireName: 'notes')
  String get notes;

  @BuiltValueField(wireName: 'min_value')
  double get min;

  @BuiltValueField(wireName: 'max_value')
  double get max;

  @BuiltValueField(wireName: 'sensor_type')
  String get type;

  @BuiltValueField(wireName: 'last_service')
  DateTime get lastService;

  @BuiltValueField(wireName: 'installation_date')
  DateTime get installationDate;

  @BuiltValueField(wireName: 'sensor_values')
  BuiltList<GeneralSensorValueModel> get values;

  GeneralSensorModel._();

  factory GeneralSensorModel([updates(GeneralSensorModelBuilder b)]) =
      _$GeneralSensorModel;

  static Serializer<GeneralSensorModel> get serializer =>
      _$generalSensorModelSerializer;
}
