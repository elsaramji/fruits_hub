
import 'package:flutter/material.dart' show BuildContext, Widget, StatelessWidget, Offset, BoxShadow, BoxDecoration, Icon, InputBorder, EdgeInsets, BoxConstraints, InputDecoration, TextField, Container;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart' show ColorSchemeExtinction, LocalExtinction;
import 'package:fruits_hub/core/icons/app_icons.dart' show AppIcons;
import 'package:fruits_hub/core/themes/colors.dart' show AppColors;

class SearchTextInput extends StatelessWidget {
  const SearchTextInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: context.colorScheme.onSurface.withValues(alpha: 0.1),
            offset: const Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: context.colorScheme.onPrimary,
          hintText: context.local.search,
          prefixIcon: Icon(
            AppIcons.search_normal_1_svg_outline,
            color: context.colorScheme.primary,
          ),
          suffixIcon: Icon(
            AppIcons.setting_4_svg_outline,
            color: AppColors.grayscale400,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.5.w,
            vertical: 8.h,
          ),
          constraints: BoxConstraints(minHeight: 40.h),
        ),
      ),
    );
  }
}
