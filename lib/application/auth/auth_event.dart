part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authRequested() = AuthRequested;
  const factory AuthEvent.signout() = AuthSignOut;
}
