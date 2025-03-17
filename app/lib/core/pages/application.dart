import 'package:app/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
    // return Scaffold(
    //   body: Center(
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         Text(LocaleKeys.core_hello.tr()),
    //         ElevatedButton(
    //           onPressed: () {
    //             if (sl<LanguageCubit>().state == Locale('el')) {
    //               context.setLocale(Locale('en'));
    //               sl<LanguageCubit>().changeLang(langCode: 'en');
    //             } else {
    //               context.setLocale(Locale('el'));
    //               sl<LanguageCubit>().changeLang(langCode: 'el');
    //             }
    //           },
    //           child: Text(
    //             LocaleKeys.core_change_language.tr(),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
