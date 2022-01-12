import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:ddd_training/Domain/notes/i_notes_repository.dart';
import 'package:ddd_training/Domain/notes/note.dart';
import 'package:ddd_training/Domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:dartz/dartz.dart';

part 'note_watcher_event.dart';
part 'note_watcher_state.dart';
part 'note_watcher_bloc.freezed.dart';

@injectable
class NoteWatcherBloc extends Bloc<NoteWatcherEvent, NoteWatcherState> {
  final INoteRepository _iNoteRepository;
  NoteWatcherBloc(this._iNoteRepository)
      : super(const NoteWatcherState.initial());

  StreamSubscription<Either<NoteFailure, KtList<Note>>>? _noteSubscription;

  @override
  Stream<NoteWatcherState> mapEventToState(NoteWatcherEvent event) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const NoteWatcherState.loadInProgress();
        await _noteSubscription?.cancel();
        _noteSubscription = _iNoteRepository.watchAll().listen((event) {
          add(
            NoteWatcherEvent.noteReceived(event),
          );
        });
      },
      watchUncompletedStarted: (e) async* {
        yield const NoteWatcherState.loadInProgress();
        await _noteSubscription?.cancel();
        _noteSubscription = _iNoteRepository.watchUncompleted().listen((event) {
          add(
            NoteWatcherEvent.noteReceived(event),
          );
        });
      },
      noteReceived: (value) async* {
        yield value.failurenotes.fold((l) => NoteWatcherState.loadFailure(l),
            (r) => NoteWatcherState.loadSuccess(r));
      },
    );
  }

  @override
  Future<void> close() async {
    await _noteSubscription?.cancel();
    return super.close();
  }
}
