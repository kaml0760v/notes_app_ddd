import 'package:auto_route/auto_route.dart';
import 'package:ddd_training/Presentation/notes/note_form/note_form_page.dart';
import 'package:ddd_training/Presentation/notes/notes_overview/notes_overview_page.dart';
import 'package:ddd_training/Presentation/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:ddd_training/Presentation/signIn/sign_in_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: SignInPage),
  AutoRoute(page: NotesOverviewPage),
  AutoRoute(page: NoteFormPage, fullscreenDialog: true),
  AutoRoute(page: SplashPage, initial: true),
])
class AppRouter extends _$AppRouter {}
