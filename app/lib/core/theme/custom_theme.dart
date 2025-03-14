import 'package:flutter/material.dart';

import '../dependency_injection.dart';
import 'cubit/palette/palette_cubit.dart';

class AppTheme {
  static ThemeData get lightTheme {
    ThemeData base = ThemeData.light();
    return base.copyWith(
      scaffoldBackgroundColor: sl<PaletteCubit>().state.backgroundColor,
      scrollbarTheme: base.scrollbarTheme.copyWith(
        radius: Radius.circular(10),
        thumbVisibility: MaterialStateProperty.all(true),
        interactive: true,
      ),
      primaryColor: sl<PaletteCubit>().state.primaryColor,
      colorScheme: base.colorScheme.copyWith(
        primary: sl<PaletteCubit>().state.primaryColor,
        secondary: sl<PaletteCubit>().state.secondaryColor,
      ),
      appBarTheme: base.appBarTheme.copyWith(
        color: sl<PaletteCubit>().state.primaryColor,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      dialogTheme: base.dialogTheme.copyWith(
        backgroundColor: sl<PaletteCubit>().state.backgroundColor,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
