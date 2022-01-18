import 'package:ddd_training/Domain/notes/note_failure.dart';
import 'package:flutter/material.dart';

class CriticalFailureWidget extends StatelessWidget {
  final NoteFailure loadFailure;
  const CriticalFailureWidget({Key? key, required this.loadFailure})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "🙋‍♂️",
            style: TextStyle(fontSize: 100),
          ),
          Text(
            loadFailure.maybeMap(
                orElse: () => "Unexpected Error",
                insufficientPermission: (_) => "Insufficient Permission"),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
