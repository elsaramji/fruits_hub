import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/components/nav_bar.dart' show NavBar;
import 'package:fruits_hub/features/home/presentation/views/home_view.dart'
    show HomeView;
import 'package:fruits_hub/features/home/presentation/widgets/nav_bar_items.dart'
    show navBarItemsUserHome;
import 'package:go_router/go_router.dart'
    show GoRoute, GoRouter, StatefulShellRoute, StatefulShellBranch;

import '../../../features/admin_home/presentation/views/admin_home_view.dart';
import '../../../features/admin_home/presentation/widgets/nav_bar_items.dart';
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
  static const String offers = '/offers';
  static const String products = '/products';
  static const String profile = '/profile';
  static const String productDetails = '/product-details';
  static const String cart = '/cart';
  static const String orders = '/orders';
  static const String settings = '/settings';
}

String initialLocation(BuildContext context) {
  if (context.read<OnboardingCubit>().state.isViewed) {
    log(context.read<OnboardingCubit>().state.isViewed.toString());
    if (context.read<AuthCubit>().state.role != null) {
      return context.read<AuthCubit>().state.role == 'admin'
          ? RouterName.adminHome
          : RouterName.home;
    } else {
      return RouterName.adminHome;
    }
  } else {
    return RouterName.onboarding;
  }
}

class RouterConfig {
  static router(BuildContext context) => GoRouter(
    initialLocation: initialLocation(context),
    routes: [
      shellRoutesHomeUser(),
      adminHomeRoute(),
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
    ],
  );

  static StatefulShellRoute adminHomeRoute() {
    return StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => NavBar(
        navigationShell: navigationShell,
        items: navBarItemsAdminHome(context),
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterName.adminHome,
              builder: (context, state) => const AdminHomeView(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterName.orders,
              builder: (context, state) =>
                  Scaffold(body: Center(child: Text('Orders'))),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterName.offers,
              builder: (context, state) =>
                  Scaffold(body: Center(child: Text('Offers'))),
            ),
          ],
        ),
      ],
    );
  }

  static StatefulShellRoute shellRoutesHomeUser() {
    return StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => NavBar(
        navigationShell: navigationShell,
        items: navBarItemsUserHome(context),
      ),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterName.home,
              builder: (context, state) => const HomeView(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: [
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
          ],
        ),

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterName.cart,
              builder: (context, state) =>
                  const Scaffold(body: Center(child: Text('Cart'))),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterName.profile,
              builder: (context, state) =>
                  const Scaffold(body: Center(child: Text('Profile'))),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RouterName.settings,
              builder: (context, state) =>
                  const Scaffold(body: Center(child: Text('Settings'))),
            ),
          ],
        ),
      ],
    );
  }
}
