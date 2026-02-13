part of 'auth_cubit.dart';

@immutable
sealed class AuthState {
  final String? role;
  const AuthState({this.role});
}

final class AuthInitial extends AuthState {
  const AuthInitial({super.role});
}

final class AuthLoading extends AuthState {
  const AuthLoading();
}

final class AuthSuccess extends AuthState {
  const AuthSuccess({super.role});
}

final class AuthFailure extends AuthState {
  final RequestError error;
  const AuthFailure(this.error, {super.role});
}
