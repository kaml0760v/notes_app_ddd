part of 'sign_in_bloc.dart';

// @immutable
// abstract class SignInState {}

// class SignInInitial extends SignInState {}

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required EmailAddress email,
    required Password password,
    required AutovalidateMode autoValidateMode,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        email: EmailAddress(""),
        password: Password(''),
        autoValidateMode : AutovalidateMode.disabled,
        isSubmitting: false,
        authFailureOrSuccess: none(),
      );
}
