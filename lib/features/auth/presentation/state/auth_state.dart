part of 'auth_cubit.dart';

@immutable

sealed class AuthState {
  final bool isAuthenticated;
  const AuthState(this.isAuthenticated);
}

final class AuthInitial extends AuthState {
  const AuthInitial(super.isAuthenticated);
}

final class AuthLoading extends AuthState {
  const AuthLoading(super.isAuthenticated);
}

final class AuthSuccess extends AuthState {
  const AuthSuccess(super.isAuthenticated);
}

final class AuthFailure extends AuthState {
  final RequestError error;
  const AuthFailure(this.error, super.isAuthenticated);
}
