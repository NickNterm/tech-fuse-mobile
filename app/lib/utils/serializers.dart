import 'package:app/features/home/data/models/general_sensor_model.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

part 'serializers.g.dart';

@SerializersFor([
  GeneralSensorModel,
])
Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())
  ..add(Iso8601DateTimeSerializer()))
    .build();
