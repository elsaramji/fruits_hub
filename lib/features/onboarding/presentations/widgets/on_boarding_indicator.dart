import 'package:flutter/material.dart'
    show
        StatelessWidget,
        BuildContext,
        Widget,
        Row,
        MainAxisAlignment,
        MainAxisSize,
        CircleAvatar,
        SizedBox;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/themes/colors.dart';

class OnBoardingIndcator extends StatelessWidget {
  const OnBoardingIndcator({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 5.r,
          backgroundColor: currentPage == 0
              ? AppColors.green500
              : AppColors.primary500,
        ),
        SizedBox(width: 2.w),
        CircleAvatar(radius: 5.r, backgroundColor: AppColors.primary500),
      ],
    );
  }
}
