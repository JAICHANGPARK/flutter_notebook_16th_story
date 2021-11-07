import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_todo.freezed.dart';
part 'bloc_todo.g.dart';

@freezed
class Todo with _$Todo {
  factory Todo({required int id, required String title, required String createdAt}) = _Todo;
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
