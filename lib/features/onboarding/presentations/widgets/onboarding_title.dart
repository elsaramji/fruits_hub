import 'package:flutter/material.dart'
    show StatelessWidget, BuildContext, Widget, Text, TextSpan;
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';
import 'package:fruits_hub/core/themes/colors.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: context.local.onBoardingTitle1,
            style: context.textTheme.bodyLarge,
          ),
          TextSpan(
            text: context.local.appName1,
            style: context.textTheme.bodyLarge?.copyWith(
              color: AppColors.primary500,
            ),
          ),
          TextSpan(
            text: context.local.appName2,
            style: context.textTheme.bodyLarge?.copyWith(
              color: AppColors.orange500,
            ),
          ),
        ],
      ),
    );
  }
}
