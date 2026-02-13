import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart' show GoRouter, GoRoute;

import '../../../features/auth/presentation/state/auth_cubit.dart';
import '../../../features/auth/presentation/views/login_view.dart';
import '../../../features/auth/presentation/views/signup_view.dart';
import '../../../features/onboarding/presentations/state/onboarding_cubit/onboarding_cubit.dart';
import '../../../features/onboarding/presentations/views/onboarding_view.dart';

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

String initialLocation(BuildContext context) {
  if (context.read<OnboardingCubit>().state.isViewed) {
    log(context.read<OnboardingCubit>().state.isViewed.toString());
    return context.read<AuthCubit>().state.isAuthenticated
        ? RouterName.login
        : RouterName.login;
  }
  return RouterName.onboarding;
}

class RouterConfig {
  static router(BuildContext context) => GoRouter(
    initialLocation: initialLocation(context),
    routes: [
      GoRoute(
        path: RouterName.onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: RouterName.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: RouterName.register,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: RouterName.home,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Home'))),
      ),
    ],
  );
}
