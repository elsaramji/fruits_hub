import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/onboarding/presentations/state/onboarding_cubit/onboarding_cubit.dart'
    show OnboardingCubit;
import 'package:fruits_hub/features/onboarding/presentations/views/onboarding_view.dart'
    show OnboardingView;
import 'package:go_router/go_router.dart' show GoRouter, GoRoute;

abstract final class RouterName {
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String categories = '/categories';
  static const String products = '/products';
  static const String productDetails = '/product-details';
  static const String cart = '/cart';
  static const String orders = '/orders';
  static const String settings = '/settings';
}

class RouterConfig {
  static router(BuildContext context) => GoRouter(
    initialLocation: context.read<OnboardingCubit>().state.isViewed
        ? RouterName.login
        : RouterName.onboarding,
    routes: [
      GoRoute(
        path: RouterName.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: RouterName.login,
        builder: (context, state) => const Scaffold(),
      ),
    ],
  );
}
