part of 'sign_in_bloc.dart';

enum Status { signIn, signUp }

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInEvent.passWordChanged(String passWordStr) =
      PassWordChanged;
  const factory SignInEvent.namechanged(String nameStr) = NameChanged;
  const factory SignInEvent.profilePhotoAdd(Uint8List imageBytes) =
      ProfilePhotoAdd;
  const factory SignInEvent.formSubmitted(final Status value) = FormSubmitted;
  const factory SignInEvent.formSucceeded() = FomrSucceeded;
  const factory SignInEvent.signWithGooglePressed() = SignWithGooglePressed;
}
