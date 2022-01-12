import 'package:ddd_training/Application/auth/auth_bloc.dart';
import 'package:ddd_training/Application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:ddd_training/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesOverviewPage extends StatelessWidget {
  const NotesOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteWatcherBloc>(
          create: (context) {
            getIt<NoteWatcherBloc>()..add(const NoteWatcherEvent.watchAllStarted());
          },
        ),
        BlocProvider<NoteWatcherBloc>(
          create: (context) {
            getIt<NoteWatcherBloc>()..add(const NoteWatcherEvent.wat());
          },
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Notes"),
          leading: IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
            },
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.indeterminate_check_box)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //TODO: navigate
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
