import 'package:flutter/material.dart';

import '../../core/dependency_injection.dart';
import '../../core/theme/cubit/palette/palette_cubit.dart';
import '../../core/theme/palette.dart';
import '../../core/theme/text_styles.dart';

extension AppTextStyles on BuildContext {
  TextStyles get textStyles => TextStyles();
}

extension AppColors on BuildContext {
  Palette get palette => sl<PaletteCubit>().state;
}
