import 'package:flutter/material.dart'
    show BuildContext, ThemeData, TextTheme, ColorScheme, Theme;
import 'package:fruits_hub/l10n/app_localizations.dart';

extension LocalExtinction on BuildContext {
  AppLocalizations get local => AppLocalizations.of(this)!;
}

extension ThemeExtinction on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension TextThemeExtinction on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}

extension ColorSchemeExtinction on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
