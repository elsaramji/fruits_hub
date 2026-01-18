import 'dart:ui' show Size;

import 'package:flutter/material.dart'
    show
        ThemeData,
        TextTheme,
        EdgeInsets,
        ColorScheme,
        Brightness,
        ElevatedButton,
        BorderRadius,
        RoundedRectangleBorder,
        ElevatedButtonThemeData,
        OutlinedButton,
        BorderSide,
        OutlinedButtonThemeData,
        OutlineInputBorder,
        BoxConstraints,
        InputDecorationTheme;

import 'colors.dart';
import 'text_styles.dart';

abstract final class AppThemes {
  static ThemeData themeDataLight() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.backgroundLight,
      primaryColor: AppColors.primary500,
      textTheme: TextTheme(
        bodyLarge: AppTextStyles.bodyLargeRegular,
        bodyMedium: AppTextStyles.bodyBaseRegular,
        bodySmall: AppTextStyles.bodySmallRegular,
        displayLarge: AppTextStyles.heading1Bold,
        displayMedium: AppTextStyles.heading2Regular,
        displaySmall: AppTextStyles.heading3Regular,
        headlineLarge: AppTextStyles.heading4Regular,
        headlineMedium: AppTextStyles.heading5Bold,
        headlineSmall: AppTextStyles.heading5Regular,
      ),
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary500,
        brightness: Brightness.light,
        primary: AppColors.primary500,
        onPrimary: AppColors.white,
        surface: AppColors.backgroundLight,
        onSurface: AppColors.grayscale950,
        error: AppColors.orange400,
        onError: AppColors.orange950,
        secondary: AppColors.green500,
        onSecondary: AppColors.grayscale400,
        surfaceContainerHighest: AppColors.textFiledsLight,
        onSecondaryContainer: AppColors.grayscale950,
        outline: AppColors.outlineButtonBorderLight,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary500,
          foregroundColor: AppColors.white,
          maximumSize: const Size(double.infinity, 56),
          minimumSize: const Size(56, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: AppTextStyles.bodyBaseBold,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.grayscale950,
          maximumSize: const Size(double.infinity, 56),
          minimumSize: const Size(56, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: AppColors.outlineButtonBorderLight),
          ),
          textStyle: AppTextStyles.bodyBaseBold,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyles.bodySmallBold,
        labelStyle: AppTextStyles.bodySmallBold,
        errorStyle: AppTextStyles.bodySmallBold,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: AppColors.outlineButtonBorderLight),
        ),

        constraints: BoxConstraints(minHeight: 56),
      ),
    );
  }
}
