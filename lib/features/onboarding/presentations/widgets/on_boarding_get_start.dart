import 'package:flutter/material.dart'
    show
        StatelessWidget,
        BuildContext,
        Widget,
        EdgeInsets,
        Text,
        Center,
        SizedBox,
        ElevatedButton,
        Padding,
        Visibility;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';

import '../state/onboarding_cubit/onboarding_cubit.dart';

class OnBoardingGetStart extends StatelessWidget {
  const OnBoardingGetStart({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentPage == 1,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ElevatedButton(
          onPressed: () {
            context.read<OnboardingCubit>().changeViewed();
          },
          child: SizedBox(
            width: 1.sw,
            child: Center(child: Text(context.local.startNow)),
          ),
        ),
      ),
    );
  }
}
