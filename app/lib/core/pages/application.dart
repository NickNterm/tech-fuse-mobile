import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../utils/locale_keys.g.dart';
import '../dependency_injection.dart';
import '../lang/language_cubit.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(LocaleKeys.core_hello.tr()),
            ElevatedButton(
              onPressed: () {
                if (sl<LanguageCubit>().state == Locale('el')) {
                  context.setLocale(Locale('en'));
                  sl<LanguageCubit>().changeLang(langCode: 'en');
                } else {
                  context.setLocale(Locale('el'));
                  sl<LanguageCubit>().changeLang(langCode: 'el');
                }
              },
              child: Text(
                LocaleKeys.core_change_language.tr(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
