import 'package:auto_route/auto_route.dart';
import 'package:ddd_training/Application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (e) {
            AutoRouter.of(context).replaceNamed('/notes-overview-page');
            print("authenticated");
          },
          unauthenticated: (e) {
            AutoRouter.of(context).replaceNamed('/sign-in-page');
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
