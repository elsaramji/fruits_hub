import 'package:flutter/material.dart'
    show
        StatelessWidget,
        PreferredSizeWidget,
        BuildContext,
        Widget,
        Size,
        EdgeInsets,
        Text,
        IconThemeData,
        Colors,
        AppBar,
        Padding;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../themes/colors.dart';
import '../../themes/text_styles.dart';

class TextAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const TextAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: AppBar(
        title: Text(title, style: AppTextStyles.bodyLargeBold),
        centerTitle: true,
        iconTheme: IconThemeData(
          color: AppColors.grayscale950,
          size: 28.sp,
          applyTextScaling: true,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.h);
}
