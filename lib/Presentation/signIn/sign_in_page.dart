import 'package:ddd_training/Application/auth/sign_in_form/sign_in_bloc.dart';
import 'package:ddd_training/Presentation/signIn/widgets/sign_in_form.dart';
import 'package:ddd_training/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
   static const String routes = '/sign-in';
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: BlocProvider(
        create: (context) {
          return getIt<SignInBloc>();
        },
        child:  const SignInForm(),
      ),
    );
  }
}
