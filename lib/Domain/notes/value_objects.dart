import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:ddd_training/Domain/core/failures.dart';
import 'package:ddd_training/Domain/core/value_objects.dart';
import 'package:ddd_training/Domain/core/value_trasnformers.dart';
import 'package:ddd_training/Domain/core/value_validators.dart';
import 'package:kt_dart/collection.dart';

class NoteBody extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const NoteBody._(this.value);

  factory NoteBody(String input) {
    return NoteBody._(
      validateMaxStringLength(input, 1000).flatMap(validateStringNotEmpty),
    );
  }
}

class TodoName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const TodoName._(this.value);

  factory TodoName(String input) {
    return TodoName._(
      validateMaxStringLength(input, 30)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }
}

class NoteColor extends ValueObject<Color> {
  static const List<Color> predefinedColors = [
    Color(0xfffafafa), // canvas
    Color(0xfffa8072), // salmon
    Color(0xfffedc56), // mustard
    Color(0xffd0f0c0), // tea
    Color(0xfffca3b7), // flamingo
    Color(0xff997950), // tortilla
    Color(0xfffffdd0),
  ];
  @override
  final Either<ValueFailure<Color>, Color> value;

  const NoteColor._(this.value);

  factory NoteColor(Color color) {
    return NoteColor._(
      right(makeColorOpaque(color)),
    );
  }
}

class List3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  const List3._(this.value);

  factory List3(KtList<T> input) {
    return List3._(
      validateMaxListLength(input, 3),
    );
  }

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == 3;
  }
}
