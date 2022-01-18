import 'package:ddd_training/Application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'critical_failure_widget.dart';
import 'error_note_card_widget.dart';
import 'note_card_widget.dart';

class NotesOverviewBody extends StatelessWidget {
  const NotesOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteWatcherBloc, NoteWatcherState>(
      builder: (context, state) {
        return state.map(initial: (_) {
          return Container();
        }, loadInProgress: (_) {
          return const Center(child: CircularProgressIndicator());
        }, loadSuccess: (state) {
          return ListView.builder(
            itemCount: state.notes.size,
            itemBuilder: (context, index) {
              final note = state.notes[index];
              if (note.failureOption.isSome()) {
                return ErrorNoteCardWidget(
                  note: note,
                );
              } else {
                return NoteCardWidget(note: note);
              }
            },
          );
        }, loadFailure: (state) {
          return CriticalFailureWidget(loadFailure: state.failureOrNote);
        });
      },
    );
  }
}
