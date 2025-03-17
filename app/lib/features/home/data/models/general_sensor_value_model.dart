library general_sensor_value_model;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'general_sensor_value_model.g.dart';

abstract class GeneralSensorValueModel
    implements Built<GeneralSensorValueModel, GeneralSensorValueModelBuilder> {
  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'data')
  String get data;

  @BuiltValueField(wireName: 'date')
  DateTime get date;

  GeneralSensorValueModel._();

  factory GeneralSensorValueModel([updates(GeneralSensorValueModelBuilder b)]) =
      _$GeneralSensorValueModel;

  static Serializer<GeneralSensorValueModel> get serializer =>
      _$generalSensorValueModelSerializer;
}
