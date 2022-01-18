part of 'note_form_bloc.dart';

@freezed
class NoteFormEvent with _$NoteFormEvent {
  const factory NoteFormEvent.initialized(Option<Note> body) = _Initialized;
  const factory NoteFormEvent.bodyChanged(String body) = _BodyChanged;
  const factory NoteFormEvent.colorChanged(Color color) = _ColorChanged;
  const factory NoteFormEvent.todoChanged(KtList<TodoItemPrimitive> todo) =
      _TodoChanged;
  const factory NoteFormEvent.saved() = _Saved;
}
