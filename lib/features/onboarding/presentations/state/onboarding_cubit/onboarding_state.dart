part of 'onboarding_cubit.dart';

sealed class OnboardingState {
  final bool isViewed;
  const OnboardingState(this.isViewed);
}

final class OnboardingInitial extends OnboardingState {
  @override
  final bool isViewed;
  const OnboardingInitial({required this.isViewed}) : super(isViewed);
}

final class OnboardingViewed extends OnboardingState {
  @override
  final bool isViewed;
  const OnboardingViewed({required this.isViewed}) : super(isViewed);
}
