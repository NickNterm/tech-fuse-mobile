import 'package:flutter/material.dart';

import '../dependency_injection.dart';
import 'cubit/palette/palette_cubit.dart';

class TextStyles {
  static Color kTextColorMain1 = sl<PaletteCubit>().state.mainTextColor;
  TextStyle header1 = TextStyle(
    fontSize: 32,
    color: kTextColorMain1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
  );

  TextStyle header2 = TextStyle(
    fontSize: 24,
    color: kTextColorMain1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
  );

  TextStyle header3 = TextStyle(
    fontSize: 18,
    color: kTextColorMain1,
    fontStyle: FontStyle.normal,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500,
  );

  TextStyle body1b = TextStyle(
    fontSize: 16,
    color: kTextColorMain1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontFamily: 'Manrope',
  );

  TextStyle body1 = TextStyle(
    fontSize: 16,
    color: kTextColorMain1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontFamily: 'Manrope',
  );

  TextStyle body2b = TextStyle(
    fontSize: 14,
    color: kTextColorMain1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontFamily: 'Manrope',
  );

  TextStyle body2 = TextStyle(
    fontSize: 14,
    color: kTextColorMain1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontFamily: 'Manrope',
  );

  TextStyle subtitle1b = TextStyle(
    fontSize: 12,
    color: kTextColorMain1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontFamily: 'Manrope',
  );

  TextStyle subtitle1 = TextStyle(
    fontSize: 12,
    color: kTextColorMain1,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontFamily: 'Manrope',
  );
}
