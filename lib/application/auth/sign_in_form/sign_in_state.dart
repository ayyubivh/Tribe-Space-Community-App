part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required String email,
    required String? password,
    required String userName,
    required Uint8List? photoUrl,
    required bool isEmailValid,
    required bool isPasswordValid,
    required bool isFormValid,
    required bool isLoading,
    required bool isNameValid,
    required String errorMessage,
    required bool isFormSuccessful,
    required bool isImage,
    required bool isFormValidateFailed,
  }) = _SignInState;
  factory SignInState.initial() => const SignInState(
        email: '',
        userName: '',
        password: '',
        photoUrl: null,
        isEmailValid: true,
        isPasswordValid: true,
        isFormValid: false,
        isFormValidateFailed: false,
        isNameValid: true,
        errorMessage: '',
        isImage: false,
        isFormSuccessful: false,
        isLoading: false,
      );
}
