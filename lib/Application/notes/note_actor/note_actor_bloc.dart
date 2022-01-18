import 'package:bloc/bloc.dart';
import 'package:ddd_training/Domain/notes/i_notes_repository.dart';
import 'package:ddd_training/Domain/notes/note.dart';
import 'package:ddd_training/Domain/notes/note_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'note_actor_event.dart';
part 'note_actor_state.dart';
part 'note_actor_bloc.freezed.dart';

@injectable
class NoteActorBloc extends Bloc<NoteActorEvent, NoteActorState> {
  NoteActorBloc(this._iNoteRepository) : super(const NoteActorState.initial());

  final INoteRepository _iNoteRepository;

  @override
  Stream<NoteActorState> mapEventToState(NoteActorEvent event) async* {
    yield const NoteActorState.actionProgress();
    final possibleFailure = await _iNoteRepository.delete(event.note);
    yield possibleFailure.fold(
      (f) => NoteActorState.deleteFailure(f),
      (_) => const NoteActorState.deleteSuccess(),
    );
    // event.map(deleted: (e) async* {
    //   yield const NoteActorState.actionProgress();
    //   final possibleFailure = await _iNoteRepository.delete(e.note);
    //   yield possibleFailure.fold(
    //       (l) => NoteActorState.deleteFailure(l), (_) => const NoteActorState.deleteSuccess());
    // });
  }
}
