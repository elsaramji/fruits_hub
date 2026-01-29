import 'package:flutter/material.dart' show BuildContext;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/config/routes/router.dart' show RouterName;
import 'package:go_router/go_router.dart';

import '../presentations/state/onboarding_cubit/onboarding_cubit.dart'
    show OnboardingCubit;

void getStarted(BuildContext context) {
  context.read<OnboardingCubit>().changeViewed();
  context.go(RouterName.login);
}
