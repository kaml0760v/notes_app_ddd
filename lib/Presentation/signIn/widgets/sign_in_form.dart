import 'package:auto_route/auto_route.dart';
import 'package:ddd_training/Application/auth/auth_bloc.dart';
import 'package:ddd_training/Application/auth/sign_in_form/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: context.read<SignInBloc>().state.autoValidateMode,
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              const Text(
                '📑',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 130,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                //autovalidateMode: AutovalidateMode.disabled,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  labelText: "Email",
                ),
                autocorrect: false,
                validator: (value) {
                  context.read<SignInBloc>().state.email.value.fold(
                      (l) => l.maybeMap(
                            invalidEmail: (_) {
                              return "Invalid Email";
                            },
                            orElse: () => null,
                          ),
                      (_) => null);
                  return null;
                },
                onChanged: (value) {
                  context
                      .read<SignInBloc>()
                      .add(SignInEvent.emailChanged(value));
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                //autovalidateMode: state.autoValidateMode,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  labelText: "Password",
                ),
                obscureText: true,
                autocorrect: false,
                validator: (value) {
                  context.read<SignInBloc>().state.password.value.fold(
                      (l) => l.maybeMap(
                            shortPassword: (_) =>
                                "Password must be of 6 digits",
                            orElse: () => null,
                          ),
                      (_) => null);

                  return;
                },
                onChanged: (value) {
                  context
                      .read<SignInBloc>()
                      .add(SignInEvent.passwordChanged(value));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        context.read<SignInBloc>().add(const SignInEvent
                            .signInWithEmailAndPasswordPressd());
                      },
                      child: const Text("Sign In"),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        context.read<SignInBloc>().add(const SignInEvent
                            .registerWithEmailAndPasswordPressd());
                      },
                      child: const Text("Register"),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  context
                      .read<SignInBloc>()
                      .add(const SignInEvent.signInWithGooglePressd());
                },
                child: const Text("Signin with Google"),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(
                  height: 8,
                ),
                const LinearProgressIndicator(),
              ],
            ],
          ),
        );
      },
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
            () {},
            (either) => either.fold(
                  (l) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        l.map(
                            canCalledByUser: (_) => "Cancelled",
                            serverError: (_) => "Sever Error",
                            emailAlreadyInUse: (_) => "Email already Exists",
                            invalidEmailAndPasswordCombination: (_) =>
                                "Invalid Email/Password"),
                      ),
                    ),
                  ),
                  (r) {
                    // Navigator.pushReplacementNamed(
                    //     context, NotesOverviewPage.routes);

                    AutoRouter.of(context).replaceNamed('/notes-overview-page');
                    context
                        .read<AuthBloc>()
                        .add(const AuthEvent.authCheckRequested());
                  },
                ));
      },
    );
  }
}
