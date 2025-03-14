library general_sensor_model;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'general_sensor_model.g.dart';

abstract class GeneralSensorModel implements Built<GeneralSensorModel , GeneralSensorModelBuilder> {
  @BuiltValueField(wireName: 'name')
  String get name;

  GeneralSensorModel._();

  factory GeneralSensorModel([updates(GeneralSensorModelBuilder b)]) = _$GeneralSensorModel;

  static Serializer<GeneralSensorModel> get serializer => _$generalSensorModelSerializer;
}
