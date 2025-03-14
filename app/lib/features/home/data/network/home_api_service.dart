import 'package:app/app_config.dart';
import 'package:app/core/network/build_value_converter.dart';
import 'package:app/features/home/data/models/general_sensor_model.dart';
import 'package:app/utils/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';

part 'home_api_service.chopper.dart';

@ChopperApi()
abstract class HomeApiService extends ChopperService {

  @GET(path: '/api/general/sensor/')
  Future<Response<BuiltList<GeneralSensorModel>>> getGeneralSensors();

  static HomeApiService create() {
    final client = ChopperClient(
      baseUrl: Uri.tryParse(
        AppConfig.instance().apiEndPoint,
      ),
      services: [
        _$HomeApiService(),
      ],
      converter: BuiltValueConverter(serializers),
      errorConverter: BuiltValueConverter(serializers),
      interceptors: [
        HttpLoggingInterceptor(),
        //HomeApiInterceptor(),
      ],
    );
    return _$HomeApiService(client);
  }
}
