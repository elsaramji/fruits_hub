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
  static const String adminHome = '/admin-home';
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
    if (context.read<AuthCubit>().state.role !=null) {
      return context.read<AuthCubit>().state.role == 'admin'
          ? RouterName.adminHome
          : RouterName.home;
    } else {
      return RouterName.login;
    }
  } else {
    return RouterName.onboarding;
  }
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
      GoRoute(
        path: RouterName.adminHome,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Admin Home'))),
      ),
      GoRoute(
        path: RouterName.categories,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Categories'))),
      ),
      GoRoute(
        path: RouterName.products,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Products'))),
      ),
      GoRoute(
        path: RouterName.productDetails,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Product Details'))),
      ),
      GoRoute(
        path: RouterName.cart,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Cart'))),
      ),
      GoRoute(
        path: RouterName.orders,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Orders'))),
      ),
      GoRoute(
        path: RouterName.settings,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('Settings'))),
      ),
    ],
  );
}
