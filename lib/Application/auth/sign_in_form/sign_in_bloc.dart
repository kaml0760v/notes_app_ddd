import 'package:dartz/dartz.dart';
import 'package:ddd_training/Domain/auth/auth_failure.dart';
import 'package:ddd_training/Domain/auth/i_auth_facade.dart';
import 'package:ddd_training/Domain/auth/value_objects.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;
  SignInBloc(this._authFacade) : super(SignInState.initial());
  // SignInBloc(SignInState initialState) : super(i nitialState);

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.email),
          authFailureOrSuccess: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          authFailureOrSuccess: none(),
        );
      },
      registerWithEmailAndPasswordPressd: (e) async* {
        yield* _performActionOnAuthFaceWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
        );
      },
      signInWithEmailAndPasswordPressd: (e) async* {
        yield* _performActionOnAuthFaceWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword,
        );
      },
      signInWithGooglePressd: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: none(),
        );
        final failureOrSuccess = await _authFacade.signInWithGoogle();
        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccess: some(failureOrSuccess),
        );
      },
    );
  }
  // @override
  // SignInState get initialState => SignInInitial();

  // @override
  // Stream<SignInState> mapEventToState(SignInEvent event) async* {
  //   yield* event.map(
  //     emailChanged: (e) async* {
  //       yield state.copyWith(
  //         email: EmailAddress(e.email),
  //         authFailureOrSuccess: none(),
  //       );
  //     },
  //     passwordChanged: (e) async* {
  //       yield state.copyWith(
  //         password: Password(e.password),
  //         authFailureOrSuccess: none(),
  //       );
  //     },
  //     registerWithEmailAndPasswordPressd: (e) async* {
  //       yield* _performActionOnAuthFaceWithEmailAndPassword(
  //         _authFacade.registerWithEmailAndPassword,
  //       );
  //     },
  //     signInWithEmailAndPasswordPressd: (e) async* {
  //       yield* _performActionOnAuthFaceWithEmailAndPassword(
  //         _authFacade.signInWithEmailAndPassword,
  //       );
  //     },
  //     signInWithGooglePressd: (e) async* {
  //       print("jhehf");
  //       yield state.copyWith(
  //         isSubmitting: true,
  //         authFailureOrSuccess: none(),
  //       );
  //       final failureOrSuccess = await _authFacade.signInWithGoogle();
  //       yield state.copyWith(
  //         isSubmitting: false,
  //         authFailureOrSuccess: some(failureOrSuccess),
  //       );
  //     },
  //   );
  // }
  // SignInBloc(this._authFacade) : super(SignInState.initial());

  // SignInBloc(this._authFacade) : super(SignInState.initial()) {
  //   // ignore: void_checks
  //   on<SignInEvent>((event, emit) async* {
  //     yield* event.map(
  //       emailChanged: (e) async* {
  // emit(state.copyWith(
  //   email: EmailAddress(e.email),
  //   authFailureOrSuccess: none(),
  // ));
  //       },
  //       passwordChanged: (e) async* {
  //         yield state.copyWith(
  //           password: Password(e.password),
  //           authFailureOrSuccess: none(),
  //         );
  //       },
  //       registerWithEmailAndPasswordPressd: (e) async* {
  //         yield* _performActionOnAuthFaceWithEmailAndPassword(
  //           _authFacade.registerWithEmailAndPassword,
  //         );
  //       },
  //       signInWithEmailAndPasswordPressd: (e) async* {
  //         yield* _performActionOnAuthFaceWithEmailAndPassword(
  //           _authFacade.signInWithEmailAndPassword,
  //         );
  //       },
  //       signInWithGooglePressd: (e) async* {
  //         print("jhehf");
  //         emit(state.copyWith(
  //           isSubmitting: true,
  //           authFailureOrSuccess: none(),
  //         ));
  //         final failureOrSuccess = await _authFacade.signInWithGoogle();
  //         emit(state.copyWith(
  //           isSubmitting: false,
  //           authFailureOrSuccess: some(failureOrSuccess),
  //         ));
  //       },
  //     );
  //   });
  // }

  Stream<SignInState> _performActionOnAuthFaceWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function(
            {required EmailAddress email, required Password password})
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    if (state.email.isValid() && state.password.isValid()) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );
      failureOrSuccess =
          await forwardedCall(email: state.email, password: state.password);
    }

    yield state.copyWith(
      isSubmitting: false,
      autoValidateMode: AutovalidateMode.always,
      authFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
