
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ddd_training/Application/auth/auth_bloc.dart';
import 'package:ddd_training/injection.dart';
import 'package:ddd_training/Presentation/routes/app_router.dart' as app_router;


class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = app_router.AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        debugShowCheckedModeBanner: false,
        title: 'Notes',
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        // onGenerateRoute: (settings) {
        //   final arguments = settings.arguments;

        //   switch (settings.name) {
        //     case SignInPage.routes:
        //       return MaterialPageRoute(
        //           builder: (context) => const SignInPage());
        //     case NotesOverviewPage.routes:
        //       return MaterialPageRoute(
        //           builder: (context) => const NotesOverviewPage());
        //     case NoteFormPage.routes:
        //       final args = (arguments ?? Map) as Map;

        //       return MaterialPageRoute(
        //           builder: (context) => NoteFormPage(
        //                 editedNote: args["editedNote"],
        //               ));
        //     default:
        //       return MaterialPageRoute(
        //           builder: (context) => const SplashPage());
        //   }
        // },
        // home: const SignIn(),
      ),
    );
  }
}
