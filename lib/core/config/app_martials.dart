import 'package:flutter/material.dart'
    show StatelessWidget, BuildContext, Widget, MaterialApp;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, MultiBlocProvider, BlocProvider;
import 'package:fruits_hub/core/config/routes/router.dart';
import 'package:fruits_hub/core/themes/themes_data.dart' show AppThemes;
import 'package:fruits_hub/features/onboarding/presentations/state/onboarding_cubit/onboarding_cubit.dart'
    show OnboardingCubit;

import '../../features/onboarding/presentations/state/localization_cubit/localization_cubit.dart';
import '../../l10n/app_localizations.dart' show AppLocalizations;

class AppMaterials extends StatelessWidget {
  const AppMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocalizationCubit()),
        BlocProvider(create: (context) => OnboardingCubit()),
      ],
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          return MaterialApp.router(
            theme: AppThemes.themeDataLight(),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: state.locale,
            routerConfig: RouterConfig.router(context),
          );
        },
      ),
    );
  }
}
