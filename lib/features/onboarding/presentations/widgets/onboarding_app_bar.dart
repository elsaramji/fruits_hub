import 'package:flutter/material.dart'
    show
        BuildContext,
        EdgeInsets,
        GestureDetector,
        Padding,
        PreferredSizeWidget,
        Size,
        Spacer,
        Switch,
        Text,
        TextOverflow,
        Widget;
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/extinctions/app_extinctions.dart';
import 'package:fruits_hub/features/onboarding/controls/get_started.dart';
import 'package:fruits_hub/features/onboarding/presentations/state/localization_cubit/localization_cubit.dart'
    show LocalizationCubit;

class OnboardingAppBar extends StatefulWidget implements PreferredSizeWidget {
  const OnboardingAppBar({super.key});

  @override
  State<OnboardingAppBar> createState() => _OnboardingAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(52.h);
}

class _OnboardingAppBarState extends State<OnboardingAppBar> {
  bool isEnglish = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              getStarted(context);
            },
            child: Text(
              context.local.skip,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodySmall,
            ),
          ),

          Spacer(),

          Text("AR"),
          Switch(
            value:
                context.read<LocalizationCubit>().state.locale == Locale("en"),
            onChanged: (value) {
              context.read<LocalizationCubit>().changeLocale(
                Locale(value ? "en" : "ar"),
              );
            },
          ),
          Text("EN"),
        ],
      ),
    );
  }
}
