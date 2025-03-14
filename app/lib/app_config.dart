import 'core/config/config_dev.dart';

enum Flavor { dev, prod }

class AppConfig {
  final Flavor flavor;
  final String apiEndPoint;

  factory AppConfig({
    required Flavor flavor,
    required String apiEndPoint,
  }) =>
      _instance ??= AppConfig._internal(
        flavor,
        apiEndPoint,
      );

  AppConfig._internal(
    this.flavor,
    this.apiEndPoint,
  );

  static AppConfig? _instance;

  static AppConfig instance() => _instance!;

  static bool isProduction() => _instance!.flavor == Flavor.prod;

  static bool isDevelopment() => _instance!.flavor == Flavor.dev;

  factory AppConfig.dev() => AppConfig(
        flavor: Flavor.dev,
        apiEndPoint: ConfigDev.API_URL,
      );

  factory AppConfig.prod() => AppConfig(
        flavor: Flavor.prod,
        apiEndPoint: ConfigDev.API_URL,
      );
}
