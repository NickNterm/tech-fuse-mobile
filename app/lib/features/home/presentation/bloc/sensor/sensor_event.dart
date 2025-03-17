part of 'sensor_bloc.dart';

@immutable
sealed class SensorEvent {}

class GetSensor extends SensorEvent {}
