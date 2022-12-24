import 'package:ddd_training/Application/notes/note_form/note_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FormBodyFieldWidget extends HookWidget {
  const FormBodyFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return BlocListener<NoteFormBloc, NoteFormState>(
      listenWhen: (previous, current) {
        return previous.isEditing != current.isEditing;
      },
      listener: (context, state) {
        textEditingController.text = state.note.body.getOrCrash();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: 'Note',
          ),
          maxLength: 1000,
          maxLines: null,
          minLines: 5,
          onChanged: (value) {
            context.read<NoteFormBloc>().add(NoteFormEvent.bodyChanged(value));
          },
          validator: (value) {
            context.read<NoteFormBloc>().state.note.body.value.fold(
                (l) => l.maybeMap(
                      orElse: () => null,
                      empty: (value) => "Please insert some text",
                      exceedingLength: (value) =>
                          "can not enter more then 1000 character",
                    ),
                (r) => r);
            return;
          },
        ),
      ),
    );
  }
}
