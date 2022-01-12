import 'package:ddd_training/Domain/core/value_objects.dart';
import 'package:ddd_training/Domain/notes/todo_item.dart';
import 'package:ddd_training/Domain/notes/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item_presentation_classes.freezed.dart';

@freezed
abstract class TodoItemPrimitive implements _$TodoItemPrimitive{
  const TodoItemPrimitive._();
  const factory TodoItemPrimitive({
    required UniqueId id,
    required String name,
    required bool done,
  }) = _TodoItemPrimitive;

  factory TodoItemPrimitive.empty(){
    return TodoItemPrimitive(id: UniqueId(), name: '', done: false);
  }

  factory TodoItemPrimitive.fromDomain(TodoItem todoItem) {
    return TodoItemPrimitive(
        id: todoItem.id,
        name: todoItem.name.getOrCrash(),
        done: todoItem.done);
  }

  TodoItem toDomain() {
    return TodoItem(
        name: TodoName(name), id: id, done: done);
  }
}
