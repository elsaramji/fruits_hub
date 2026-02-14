import 'package:fruits_hub/features/auth/domain/repository/auth_repo_interface.dart'
    show AuthRepoInterface;
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:fruits_hub/core/services/apis/errors/request_error.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> with HydratedMixin {
  final AuthRepoInterface _authRepo;

  AuthCubit(this._authRepo) : super(AuthInitial()) {
    hydrate();
  }

  Future<void> login({required String email, required String password}) async {
    emit(AuthLoading());
    final result = await _authRepo.login(email: email, password: password);
    result.fold(
      (error) => emit(AuthFailure(error)),
      (user) => emit(AuthSuccess(role: user.role)),
    );
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(AuthLoading());
    final result = await _authRepo.register(
      name: name,
      email: email,
      password: password,
    );
    result.fold(
      (error) => emit(AuthFailure(error)),
      (user) => emit(AuthSuccess(role: user.role)),
    );
  }

  Future<void> logout() async {
    emit(AuthLoading());
    final result = await _authRepo.logout();
    result.fold(
      (error) => emit(AuthFailure(error)),
      (_) => emit(AuthInitial()),
    );
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    return AuthInitial(role: json['role']);
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return {'role': state.role};
  }
}
