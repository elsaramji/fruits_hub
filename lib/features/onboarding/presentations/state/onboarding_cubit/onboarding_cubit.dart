
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> with HydratedMixin {
  OnboardingCubit() : super(OnboardingInitial(isViewed: false)) {
    hydrate();
  }

  void changeViewed() {
    emit(OnboardingViewed(isViewed: true));
  }

  @override
  OnboardingState? fromJson(Map<String, dynamic> json) {
    return OnboardingInitial(isViewed: json["isViewed"]);
  }

  @override
  Map<String, dynamic>? toJson(OnboardingState state) {
    return {"isViewed": state.isViewed};
  }
}
