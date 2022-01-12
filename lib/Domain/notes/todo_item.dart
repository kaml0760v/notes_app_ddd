import 'package:dartz/dartz.dart';
import 'package:ddd_training/Domain/core/failures.dart';
import 'package:ddd_training/Domain/core/value_objects.dart';
import 'package:ddd_training/Domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';

@freezed
abstract class TodoItem implements _$TodoItem {
  const TodoItem._();

  const factory TodoItem({
    required TodoName name,
    required UniqueId id,
    required bool done,
  }) = _TodoItem;

  factory TodoItem.empty() => TodoItem(
        name: TodoName(""),
        id: UniqueId(),
        done: false,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((l) => some(l), (_) => none());
  }
}
