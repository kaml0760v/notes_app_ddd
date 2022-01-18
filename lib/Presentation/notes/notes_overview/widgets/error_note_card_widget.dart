import 'package:ddd_training/Domain/notes/note.dart';
import 'package:flutter/material.dart';

class ErrorNoteCardWidget extends StatelessWidget {
  final Note note;
  const ErrorNoteCardWidget({required this.note, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        color: Colors.red,
        child: Column(
          children: [
            Text(
              "Invalid note, Please, contact support",
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2!
                  .copyWith(fontSize: 18),
            ),
            Text(note.failureOption.fold(() => "", (a) => a.toString())),
          ],
        ),
      ),
    );
  }
}
