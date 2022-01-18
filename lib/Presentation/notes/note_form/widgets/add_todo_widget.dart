import 'package:ddd_training/Application/notes/note_form/note_form_bloc.dart';
import 'package:ddd_training/Domain/notes/todo_item.dart';
import 'package:ddd_training/Presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';
import 'package:ddd_training/Presentation/notes/note_form/misc/build_context_x.dart';

class AddTodoWidget extends StatelessWidget {
  const AddTodoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (previous, current) {
      return previous.isEditing != current.isEditing;
    }, listener: (context, state) {
      context.formTodos = state.note.todos.value.fold(
          (f) => listOf<TodoItemPrimitive>(),
          (r) => r.map((todoItem) => TodoItemPrimitive.fromDomain(todoItem)));
    }, buildWhen: (previous, current) {
      return previous.note.todos.isFull != previous.note.todos.isFull;
    }, builder: (context, state) {
      return ListTile(
        enabled: !state.note.todos.isFull,
        title: const Text('Add a todo'),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: const Icon(Icons.add),
        ),
        onTap: () {
          context.formTodos =
              context.formTodos.plusElement(TodoItemPrimitive.empty());
          context
              .read<NoteFormBloc>()
              .add(NoteFormEvent.todoChanged(context.formTodos));
        },
      );
    });
  }
}
