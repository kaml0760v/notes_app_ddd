import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:ddd_training/Application/notes/note_form/note_form_bloc.dart';
import 'package:ddd_training/Presentation/notes/note_form/widgets/add_todo_widget.dart';
import 'package:ddd_training/Presentation/notes/note_form/misc/todo_item_presentation_classes.dart';
import 'package:ddd_training/Presentation/routes/app_router.dart';
import 'package:provider/provider.dart';
import 'widgets/color_field_widget.dart';
import 'widgets/form_body_field_widget.dart';
import 'package:ddd_training/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteFormPage extends StatelessWidget {
  final dynamic editedNote;

  const NoteFormPage({Key? key, required this.editedNote}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NoteFormBloc>(
      create: (context) => getIt<NoteFormBloc>()
        ..add(
          NoteFormEvent.initialized(optionOf(editedNote)),
        ),
      child: BlocConsumer<NoteFormBloc, NoteFormState>(
        listenWhen: (previous, current) {
          return previous.saveFailureOrSuccess != current.saveFailureOrSuccess;
        },
        listener: (context, state) {
          state.saveFailureOrSuccess.fold(
              () => null,
              (either) => either.fold(
                    (l) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(l.map(
                            unexpected: (_) => "Unexpected error occured",
                            insufficientPermission: (_) =>
                                "Insufficient Permission",
                            unableToUpdate: (_) => "Unabale to update")),
                      ),
                    ),
                    (r) => AutoRouter.of(context).popUntil((route) =>
                        route.settings.name == NotesOverviewRoute.name),
                  ));
        },
        buildWhen: (previous, current) {
          return previous.isSaving != current.isSaving;
        },
        builder: (context, state) {
          return Stack(
            children: [
              NoteFormPageScaffold(editedNote: editedNote),
              SavingInProgressOverlay(isSaving: state.isSaving),
            ],
          );
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;
  const SavingInProgressOverlay({Key? key, required this.isSaving})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                "Saving",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NoteFormPageScaffold extends StatelessWidget {
  dynamic editedNote;
  NoteFormPageScaffold({
    Key? key,
    required this.editedNote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen: (previous, current) {
            return previous.isEditing != current.isEditing;
          },
          builder: (context, state) {
            return Text(state.isEditing ? "Edit a Note" : "Create a Note");
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<NoteFormBloc>().add(const NoteFormEvent.saved());
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: BlocBuilder<NoteFormBloc, NoteFormState>(
          buildWhen: (previous, current) {
        return previous.showErrorMessages != current.showErrorMessages;
      }, builder: (context, state) {
        return ChangeNotifierProvider(
          create: (BuildContext context) => FormTodos(),
          child: Form(
            autovalidateMode: state.showErrorMessages,
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  FormBodyFieldWidget(),
                  ColorFieldWidget(),
                  AddTodoWidget(),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
