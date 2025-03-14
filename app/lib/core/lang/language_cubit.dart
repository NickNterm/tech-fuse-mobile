import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'language_local_data_source.dart';

class LanguageCubit extends Cubit<Locale?> {
  final LanguageLocalDataSource _languageLocalDataSource;

  LanguageCubit({
    required LanguageLocalDataSource languageLocalDataSource,
  })  : _languageLocalDataSource = languageLocalDataSource,
        super(null);

  void getStartLang() {
    final langCode = _languageLocalDataSource.getSavedLanguage();
    if (langCode != null) {
      emit(Locale(langCode, ''));
    } else {
      final locale = PlatformDispatcher.instance.locale;
      emit(locale);
    }
  }

  void changeLang({required String langCode}) async {
    await _languageLocalDataSource.saveLanguage(languageCode: langCode);
    print("emiting locale $langCode");
    emit(Locale(langCode, ''));
  }
}
