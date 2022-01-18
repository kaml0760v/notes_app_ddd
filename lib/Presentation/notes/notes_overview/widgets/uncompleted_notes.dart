import 'package:ddd_training/Application/notes/note_watcher/note_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class UncomletedSwitch extends HookWidget {
  final BuildContext ctx;
  const UncomletedSwitch({required this.ctx, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toogleState = useState(false);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkResponse(
        onTap: () {
          toogleState.value = !toogleState.value;
          context.read<NoteWatcherBloc>().add(toogleState.value
              ? const NoteWatcherEvent.watchUncompletedStarted()
              : const NoteWatcherEvent.watchAllStarted());
        },
        child: AnimatedSwitcher(
          duration:const  Duration(milliseconds: 100),
          transitionBuilder: (child, animation) {
            return ScaleTransition(
              child: child,
              scale: animation,
            );
          },
          child: toogleState.value
              ? const Icon(
                  Icons.check_box_outline_blank,
                  key: Key('checked'),
                )
              : const Icon(
                  Icons.indeterminate_check_box,
                  key: Key("uncheked"),
                ),
        ),
      ),
    );
  }
}
