import 'package:auto_route/auto_route.dart';
import 'package:ddd_training/Application/notes/note_actor/note_actor_bloc.dart';
import 'package:ddd_training/Domain/notes/note.dart';
import 'package:ddd_training/Domain/notes/todo_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

import '../../../routes/app_router.dart';

class NoteCardWidget extends StatelessWidget {
  const NoteCardWidget({Key? key, required this.note}) : super(key: key);
  final Note note;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: note.color.getOrCrash(),
      child: InkWell(
        onTap: () {
          // Navigator.pushNamed(context, NoteFormPage.routes,
          //     arguments: {"editedNote": note});

          AutoRouter.of(context).push(NoteFormRoute(editedNote: note));
        },
        onLongPress: () {
          final noteActorBloc = context.read<NoteActorBloc>();
          _showDeleteDialog(context, noteActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.body.getOrCrash(),
                style: const TextStyle(fontSize: 18),
              ),
              if (note.todos.length > 0) ...[
                const SizedBox(
                  height: 4,
                ),
                Wrap(
                  spacing: 8,
                  children: [
                    ...note.todos
                        .getOrCrash()
                        .map(
                          (todoItem) => TodoDisplay(
                            item: todoItem,
                          ),
                        )
                        .iter,
                  ],
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext ctx, NoteActorBloc noteActorBloc) {
    showDialog(
      context: ctx,
      builder: (context) {
        return AlertDialog(
          title: const Text("Selected note:"),
          content: Text(
            note.body.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel")),
            TextButton(
                onPressed: () {
                  noteActorBloc.add(NoteActorEvent.deleted(note));
                  // Navigator.pop(context);
                  AutoRouter.of(ctx).pop();
                },
                child: const Text("Delete")),
          ],
        );
      },
    );
  }
}

class TodoDisplay extends StatelessWidget {
  final TodoItem item;
  const TodoDisplay({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (item.done)
          const Icon(
            Icons.check_box,
            color: Colors.blue,
          ),
        if (!item.done)
          const Icon(
            Icons.check_box_outline_blank,
            // color: Colors.white,
          ),
        Text(item.name.getOrCrash()),
      ],
    );
  }
}
