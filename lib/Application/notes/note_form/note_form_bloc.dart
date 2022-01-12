import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd_training/Domain/auth/auth_failure.dart';
import 'package:ddd_training/Domain/notes/i_notes_repository.dart';
import 'package:ddd_training/Domain/notes/note.dart';
import 'package:ddd_training/Domain/notes/note_failure.dart';
import 'package:ddd_training/Domain/notes/value_objects.dart';
import 'package:ddd_training/Infrastucture/notes/note_dtos.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'note_form_event.dart';
part 'note_form_state.dart';
part 'note_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<NoteFormEvent, NoteFormState> {
  final INoteRepository _iNoteRepository;
  NoteFormBloc(this._iNoteRepository) : super(NoteFormState.initial());

  @override
  Stream<NoteFormState> mapEventToState(NoteFormEvent event) async* {
    yield* event.map(initialized: (e) async* {
      yield e.body.fold(
          () => state,
          (note) => state.copyWith(
                note: note,
                isEditing: true,
              ));
    }, bodyChanged: (e) async* {
      yield state.copyWith(
        note: state.note.copyWith(
          body: NoteBody(e.body),
        ),
        saveFailureOrSuccess: none(),
      );
    }, colorChanged: (e) async* {
      yield state.copyWith(
        note: state.note.copyWith(
          color: NoteColor(e.color),
        ),
        saveFailureOrSuccess: none(),
      );
    }, todoChanged: (e) async* {
      yield state.copyWith(
        note: state.note.copyWith(
            todos: List3(e.todo.map((todoDto) => todoDto.toDomain()))),
        saveFailureOrSuccess: none(),
      );
    }, saved: (e) async* {
      Either<NoteFailure, Unit>? failureOrSuccess;
      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccess: none(),
      );
      if (state.note.failureOption.isNone()) {
        failureOrSuccess = state.isEditing
            ? await _iNoteRepository.update(state.note)
            : await _iNoteRepository.create(state.note);
      }
      yield state.copyWith(
        isSaving: false,
        showErrorMessages: true,
        saveFailureOrSuccess: optionOf(failureOrSuccess),
      );
    });
  }
}
