part of 'auth_bloc.dart';

enum AuthStatus { authenticated, unauthenticated }

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthStatus status,
    required User user,
  }) = _AuthState;

  factory AuthState.authenticated(User user) =>
      AuthState(status: AuthStatus.authenticated, user: user);
  factory AuthState.unauthenticated() =>
      AuthState(status: AuthStatus.unauthenticated, user: User.empty());
}
