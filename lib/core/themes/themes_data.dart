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
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'colors.dart';
import 'text_styles.dart';

abstract final class AppThemes {
  static ThemeData themeDataLight() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.backgroundLight,
      primaryColor: AppColors.primary500,
      textTheme: TextTheme(
        bodyLarge: AppTextStyles.bodyLargeBold,
        bodyMedium: AppTextStyles.bodyBaseSemiBold,
        bodySmall: AppTextStyles.bodySmallRegular,
        displayLarge: AppTextStyles.heading1Bold,
        displayMedium: AppTextStyles.heading2SemiBold,
        displaySmall: AppTextStyles.heading3SemiBold,
        headlineLarge: AppTextStyles.heading4Bold,
        headlineMedium: AppTextStyles.heading5SemiBold,
        headlineSmall: AppTextStyles.heading5SemiBold,
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
      //iconTheme: IconThemeData(color: AppColors.grayscale950),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary500,
          foregroundColor: AppColors.white,
          maximumSize: Size(1.sw, 56.h),
          minimumSize: Size(56.w, 56.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
          textStyle: AppTextStyles.bodyBaseBold,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.grayscale950,
          maximumSize: Size(1.sw, 56.h),
          minimumSize: Size(56.w, 56.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
            side: BorderSide(color: AppColors.outlineButtonBorderLight),
          ),
          textStyle: AppTextStyles.bodyBaseSemiBold,
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.textFiledsLight,

        hintStyle: AppTextStyles.bodyBaseBold.copyWith(
          color: AppColors.grayscale400,
        ),

        labelStyle: AppTextStyles.bodySmallBold,
        errorStyle: AppTextStyles.bodySmallBold,
        contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(color: AppColors.outlineButtonBorderLight),
        ),

        constraints: BoxConstraints(minHeight: 56.h),
      ),
    );
  }
}
