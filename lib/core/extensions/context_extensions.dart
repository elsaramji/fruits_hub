import 'package:flutter/material.dart'
    show BuildContext, ThemeData, TextTheme, ColorScheme, Theme;
import 'package:fruits_hub/l10n/app_localizations.dart';

extension ContextExtensions on BuildContext {
  AppLocalizations get local => AppLocalizations.of(this)!;
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}
