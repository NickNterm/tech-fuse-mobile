import 'package:app/features/home/domain/entities/general_sensor.dart';
import 'package:app/features/home/domain/repository/home_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sensor_event.dart';

part 'sensor_state.dart';

class SensorBloc extends Bloc<SensorEvent, SensorState> {
  final HomeRepository repository;

  SensorBloc({
    required this.repository,
  }) : super(SensorState(sensors: [])) {
    on<GetSensor>(_onSensorGet);
  }

  _onSensorGet(
    GetSensor event,
    Emitter<SensorState> emit,
  ) async {
    var sensors = await repository.getGeneralSensor();
    for (var sensor in sensors) print(sensor);
    emit(
      SensorState(
        sensors: sensors,
      ),
    );
  }
}
