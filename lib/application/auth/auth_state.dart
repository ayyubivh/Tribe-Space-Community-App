part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticationSuccess({required String userName}) =
      AuthenticationSuccess;
  const factory AuthState.authenticationFailure() = AuthenticationFailure;
}
