import 'package:bloc/bloc.dart';

import '../../colors.dart';
import '../../palette.dart';

class PaletteCubit extends Cubit<Palette> {
  PaletteCubit() : super(kTheme1);

  void changeTheme(Palette palette) => emit(palette);
}
