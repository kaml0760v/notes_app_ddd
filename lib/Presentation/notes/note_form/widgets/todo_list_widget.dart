import 'package:ddd_training/Application/notes/note_form/note_form_bloc.dart';
import 'package:ddd_training/Presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:kt_dart/collection.dart';
import 'package:provider/provider.dart';
import 'package:ddd_training/Presentation/notes/note_form/misc/build_context_x.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (previous, current) {
        return previous.note.todos.isFull != current.note.todos.isFull;
      },
      listener: (context, state) {
        if (state.note.todos.isFull) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text("Want Longer list? Activate Premium"),
              action: SnackBarAction(label: "BUY NOW", onPressed: () {}),
              duration: const Duration(seconds: 5),
            ),
          );
        }
      },
      child: Consumer<FormTodos>(
        builder: (context, formTodos, child) {
          return ImplicitlyAnimatedReorderableList<TodoItemPrimitive>(
            items: formTodos.value.asList(),
            onReorderFinished: (item, from, to, newItems) {
              context.formTodos = newItems.toImmutableList();
              context
                  .read<NoteFormBloc>()
                  .add(NoteFormEvent.todoChanged(context.formTodos));
            },
            removeDuration: const Duration(milliseconds: 0),
            areItemsTheSame: (oldItem, newItem) {
              return oldItem.id == newItem.id;
            },
            shrinkWrap: true,
            itemBuilder: (context, itemAnimation, item, index) {
              return Reorderable(
                key: ValueKey(item.id),
                builder: (context, animation, inDrag) {
                  return ScaleTransition(
                    scale:
                        Tween<double>(begin: 1, end: 0.95).animate(animation),
                    child: TodoTile(
                      index: index,
                      elevation: animation.value * 4,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class TodoTile extends HookWidget {
  final int index;
  final double elevation;
  const TodoTile({required this.index, required this.elevation, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todo =
        context.formTodos.getOrElse(index, (_) => TodoItemPrimitive.empty());
    final textEditingController = useTextEditingController(text: todo.name);
    return Slidable(
      endActionPane: ActionPane(motion: const ScrollMotion(), children: [
        SlidableAction(
          onPressed: (context) {
            context.formTodos = context.formTodos.minusElement(todo);
            context
                .read<NoteFormBloc>()
                .add(NoteFormEvent.todoChanged(context.formTodos));
          },
          icon: Icons.delete,
          foregroundColor: Colors.red,
          label: 'Delete',
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Material(
          elevation: elevation,
          animationDuration: const Duration(milliseconds: 50),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              trailing: const Handle(child: Icon(Icons.list)),
              leading: Checkbox(
                onChanged: (value) {
                  context.formTodos = context.formTodos.map((todoPrimitive) =>
                      todoPrimitive == todo
                          ? todo.copyWith(done: value!)
                          : todoPrimitive);
                  context
                      .read<NoteFormBloc>()
                      .add(NoteFormEvent.todoChanged(context.formTodos));
                },
                value: todo.done,
              ),
              title: TextFormField(
                controller: textEditingController,
                decoration: const InputDecoration(
                    hintText: 'Todo',
                    border: InputBorder.none,
                    counterText: ''),
                maxLength: 30,
                onChanged: (value) {
                  context.formTodos = context.formTodos.map((todoPrimitive) =>
                      todoPrimitive == todo
                          ? todo.copyWith(name: value)
                          : todoPrimitive);
                  context
                      .read<NoteFormBloc>()
                      .add(NoteFormEvent.todoChanged(context.formTodos));
                },
                validator: (_) {
                  return context
                      .read<NoteFormBloc>()
                      .state
                      .note
                      .todos
                      .value
                      .fold(
                          (f) => null,
                          (todoList) => todoList[index].name.value.fold(
                              (f) => f.maybeMap(
                                  empty: (f) => "Connot be empty!",
                                  orElse: () => null,
                                  exceedingLength: (f) => "Too Long",
                                  multiLine: (f) => "Cannot be multiline!"),
                              (r) => r));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
