import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/features/onboarding/presentations/splash_view.dart';

import 'core/themes/themes_data.dart';

void main() {
  runApp(MainPoint());
}

class MainPoint extends StatelessWidget {
  const MainPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          theme: AppThemes.themeDataLight(),
          debugShowCheckedModeBanner: false,
          home: SplashView(),
        );
      },
    );
  }
}
