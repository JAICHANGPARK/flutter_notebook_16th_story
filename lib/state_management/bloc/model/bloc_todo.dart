import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  factory Todo({required int id, required String title, required String createdAt}) = _Todo;
}
