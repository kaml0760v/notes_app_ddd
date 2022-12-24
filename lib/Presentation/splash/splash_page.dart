import 'package:auto_route/auto_route.dart';
import 'package:ddd_training/Application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  static String routes = '/';
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (e) {
            // Navigator.pushReplacementNamed(context, NotesOverviewPage.routes);

            AutoRouter.of(context).replaceNamed('/notes-overview-page');
          },
          unauthenticated: (e) {
            // Navigator.pushReplacementNamed(context, SignInPage.routes);
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
