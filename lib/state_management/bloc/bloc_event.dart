import 'package:equatable/equatable.dart';

import 'model/bloc_todo.dart';

abstract class TodoEvent extends Equatable {}

class ListTodosEvent extends TodoEvent {
  @override
  List<Object?> get props => [];
}

class CreateTodoEvent extends TodoEvent {
  final Todo todo;

  CreateTodoEvent({required this.todo});

  @override
  List<Object?> get props => [];
}

class DeleteTodoEvent extends TodoEvent {
  final Todo todo;

  DeleteTodoEvent({required this.todo});

  @override
  List<Object?> get props => [];
}
