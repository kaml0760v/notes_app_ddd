import 'package:auto_route/auto_route.dart';
import 'package:ddd_training/Application/auth/auth_bloc.dart';
import 'package:ddd_training/Application/notes/note_actor/note_actor_bloc.dart';
import 'package:ddd_training/Application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:ddd_training/Presentation/routes/app_router.dart';
import 'package:ddd_training/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/notes_overview_body.dart';
import 'widgets/uncompleted_notes.dart';

class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) => getIt<NoteWatcherBloc>()
            ..add(const NoteWatcherEvent.watchAllStarted()),
        ),
        BlocProvider<NoteActorBloc>(
          create: (context) => getIt<NoteActorBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  unauthenticated: (_) {
                    AutoRouter.of(context).replaceNamed('/sign-in-page');
                  });
            },
          ),
          BlocListener<NoteActorBloc, NoteActorState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  deleteFailure: (state) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.noteFailure.map(
                        unexpected: (_) =>
                            "Some error Occured, Please contact support.",
                        insufficientPermission: (_) =>
                            "Insufficient Permission",
                        unableToUpdate: (_) => "Error",
                      )),
                    ));
                  });
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Notes"),
            leading: IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.signedOut());
              },
            ),
            actions: [
              UncomletedSwitch(ctx: context),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              AutoRouter.of(context).push(NoteFormRoute(editedNote: null));
            },
            child: const Icon(Icons.add),
          ),
          body: const NotesOverviewBody(),
        ),
      ),
    );
  }
}
