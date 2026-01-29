import 'package:flutter/material.dart'
    show StatelessWidget, BuildContext, Widget, ColorFilter, BlendMode, BoxFit;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/themes/colors.dart';
import 'package:fruits_hub/core/utils/svgs_assets.dart';

class OnBoardingVector extends StatelessWidget {
  const OnBoardingVector({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppSvgs.onboardingVector,
      colorFilter: ColorFilter.mode(
        currentPage == 0
            ? AppColors.onboardingBackground
            : AppColors.onboardingBackground2,
        BlendMode.srcIn,
      ),
      fit: BoxFit.fill,
      width: 1.sw,
    );
  }
}
