part of 'auth_bloc.dart';

///class event to chack user already Loged in or not
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authUserChanged(User user) = AuthUserChanged;
  const factory AuthEvent.signedOut() = SignedOut;
}
