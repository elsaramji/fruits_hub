import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(LocalizationInitial(
    locale: null,
  ));

  void changeLocale(Locale locale) {
    emit(LocalizationChanged(locale: locale));
  }
}
