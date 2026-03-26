import 'dart:ui';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

part 'localization_state.dart';

class LocalizationCubit extends Cubit<LocalizationState> with HydratedMixin {
  LocalizationCubit() : super(LocalizationInitial(locale: Locale("ar"))){
    hydrate();
  }

  void changeLocale(Locale locale) {
    emit(LocalizationChanged(locale: locale));
  }
  
  @override
  LocalizationState? fromJson(Map<String, dynamic> json) {
    return LocalizationInitial(locale: Locale(json["locale"]));
  }
  
  @override
  Map<String, dynamic>? toJson(LocalizationState state) {
    return {"locale": state.locale?.languageCode};
  }
}
