import 'package:flutter/material.dart'
    show
        StatelessWidget,
        BuildContext,
        Widget,
        CrossAxisAlignment,
        Divider,
        Expanded,
        Text,
        Row,
        MainAxisAlignment,
        OutlinedButton,
        Column;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';

import '../../../../core/themes/colors.dart';
import '../../../../core/utils/svgs_assets.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      children: [
        Row(
          spacing: 8.w,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Divider(color: AppColors.grayscale200, thickness: 1.h),
            ),
            Text(context.local.orSignInWith),

            Expanded(
              child: Divider(color: AppColors.grayscale200, thickness: 1.h),
            ),
          ],
        ),
        OutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                AppSvgs.googleSvgBold,
                width: 24.w,
                height: 24.h,
              ),
              Text(context.local.google),
            ],
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                AppSvgs.facebookSvgBold,
                width: 24.w,
                height: 24.h,
              ),
              Text(context.local.facebook),
            ],
          ),
        ),
      ],
    );
  }
}
