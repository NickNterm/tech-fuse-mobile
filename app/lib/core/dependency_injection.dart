import 'package:app/core/lang/language_local_data_source.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_config.dart';
import 'lang/language_cubit.dart';
import 'network/network_info.dart';
import 'theme/cubit/palette/palette_cubit.dart';

final sl = GetIt.instance;

Future<void> initGetIt() async {
  _initCore();
  _initData();
  _initRepositories();
  await _initExternal();
  _initChopper();
  _initBlocs();
}

void _initCore() {
  final config = AppConfig.instance();

  ///////////////
  //  Palette  //
  ///////////////
  sl.registerSingleton(
    PaletteCubit(),
  );
}

void _initData() {}

void _initRepositories() {}

Future<void> _initExternal() async {
  /////////////////////////
  //  SharedPreferences  //
  /////////////////////////

  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  ///////////////////
  //  NetworkInfo  //
  ///////////////////

  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(
      connectivity: sl(),
    ),
  );

  sl.registerLazySingleton<Connectivity>(
    () => Connectivity(),
  );

  ////////////////
  //  Language  //
  ////////////////

  sl.registerLazySingleton(
    () => LanguageCubit(
      languageLocalDataSource: sl<LanguageLocalDataSource>(),
    ),
  );

  sl.registerLazySingleton<LanguageLocalDataSource>(
    () => LanguageLocalDataSourceImpl(
      sharedPreferences: sl(),
    ),
  );
}

void _initChopper() {}

void _initBlocs() {}
