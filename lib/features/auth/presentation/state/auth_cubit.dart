import 'package:fruits_hub/features/auth/domain/repository/auth_repo_interface.dart' show AuthRepoInterface;
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:fruits_hub/core/services/errors/request_error.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> with HydratedMixin {
  final AuthRepoInterface _authRepo;

  AuthCubit(this._authRepo) : super(AuthInitial(false)) {
    hydrate();
  }

  Future<void> login({required String email, required String password}) async {
    emit(AuthLoading(false));
    final result = await _authRepo.login(email: email, password: password);
    result.fold(
      (error) => emit(AuthFailure(error, false)),
      (user) => emit(AuthSuccess(true)),
    );
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(AuthLoading(false));
    final result = await _authRepo.register(
      name: name,
      email: email,
      password: password,
    );
    result.fold(
      (error) => emit(AuthFailure(error, false)),
      (user) => emit(AuthSuccess(true)),
    );
  }

  Future<void> logout() async {
    emit(AuthLoading(false));
    final result = await _authRepo.logout();
    result.fold(
      (error) => emit(AuthFailure(error, false)),
      (_) => emit(AuthInitial(false)),
    );
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthInitial(json['isAuthenticated']);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return {'isAuthenticated': state.isAuthenticated};
  }
}
