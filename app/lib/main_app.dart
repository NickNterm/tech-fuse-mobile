import 'dart:io';

import 'package:app/core/theme/custom_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_config.dart';
import 'core/dependency_injection.dart';
import 'core/lang/language_cubit.dart';
import 'utils/helpers/hive_helper.dart';
import 'package:logging/logging.dart';

import 'utils/route_generator.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> mainApp(AppConfig appConfig) async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await initGetIt();

  await HiveHelper.initHive();

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    print('${event.level.name}: ${event.time}: ${event.message}');
  });

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<LanguageCubit>(
          create: (context) => sl<LanguageCubit>()..getStartLang(),
        ),
      ],
      child: EasyLocalization(
        supportedLocales: [Locale('el'), Locale('en')],
        fallbackLocale: Locale('el'),
        path: 'assets/translations',
        startLocale: Locale('el'),
        child: BlocBuilder<LanguageCubit, Locale?>(
          builder: (context, state) {
            return MaterialApp(
              theme: AppTheme.lightTheme,
              initialRoute: FIRST_SCREEN,
              onGenerateRoute: RouteGenerator.generateRoute,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              locale: state,
              navigatorKey: navigatorKey,
            );
          },
        ),
      ),
    ),
  );
}
