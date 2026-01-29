import 'package:flutter/material.dart'
    show StatelessWidget, BuildContext, Widget, Size;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider, MultiBlocProvider;
import 'package:flutter_screenutil/flutter_screenutil.dart' show ScreenUtilInit;
import 'package:fruits_hub/core/config/app_martials.dart';
import 'package:fruits_hub/features/onboarding/presentations/state/onboarding_cubit/onboarding_cubit.dart';

import '../../features/onboarding/presentations/state/localization_cubit/localization_cubit.dart'
    show LocalizationCubit;

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return AppMaterials();
      },
    );
  }
}
