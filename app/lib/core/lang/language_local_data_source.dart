import 'package:shared_preferences/shared_preferences.dart';

abstract class LanguageLocalDataSource {
  Future<void> saveLanguage({required String languageCode});
  String? getSavedLanguage();
}

class LanguageLocalDataSourceImpl implements LanguageLocalDataSource {
  final SharedPreferences sharedPreferences;

  LanguageLocalDataSourceImpl({
    required this.sharedPreferences,
  });

  @override
  Future<void> saveLanguage({required String languageCode}) async {
    await sharedPreferences.setString('languageCode', languageCode);
  }

  @override
  String? getSavedLanguage() {
    return sharedPreferences.getString('languageCode');
  }
}
